Router.configure
  layoutTemplate: 'layout'
    

Meteor.startup ->

  Router.map -> 
    @route "allVideos",
      path: "/allVideos"
      template: "allVideos"

    @route "index",
      path: "/"
      template: "videoSearch"
      data:
        user: ->
          Meteor.user()
      waitOn: -> 
        Meteor.subscribe 'allVideos'
 
    @route "videos",
      path: "videos/:page?"
      template: "videoSearch"
      data:
        isVideos: true

        user: ->
          Meteor.user()
        countNVideos: ->
          Session.get("countNVideos")

        mPage: ->
          Session.get("mPage")

        startIdx: ->
          mPage = Session.get("mPage")
          mPage*nPerPage + 1
        endIdx: -> 
          mPage = Session.get("mPage")
          (mPage+1)*nPerPage 
        nextPage: ->
          mPage = Session.get("mPage")
          String(mPage + 1)
        prevPage: ->
          mPage = Session.get("mPage")
          if mPage - 1 < 0 then "0" else String(mPage - 1)
          
            

      waitOn: -> 
        mPage = parseInt(@params.page) || 0
        Session.set("mPage", mPage)

        searchWords = Session.get("searchWords")
        if not searchWords
          Session.set("searchWords", ".*")
          searchWords = Session.get("searchWords")

        console.log "[route.coffee] searchWords="
        console.log searchWords

        qeury = {title:{$regex:searchWords,$options:"i"}}

        Meteor.subscribe 'allVideos', mPage, nPerPage, qeury
        Meteor.call "countNVideos", qeury, (err, res) -> 
          Session.set("countNVideos", res)
          

    @route "videoSearch",
      path: "/videoSearch"
      template: "videoSearch"
      data:
        user: ->
          Meteor.user()
      
      waitOn: -> 
        Meteor.subscribe 'allVideos'

    @route "communityList",
      path: "/communityList"
      template: "communityList"
      waitOn: ->
        Meteor.subscribe "allCommunity"
