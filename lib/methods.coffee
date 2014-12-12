Meteor.methods
  "countNVideos": (query) ->
    if not query
      query = {}

    console.log "Videos.find(query).count() = "
    console.log Videos.find(query).count()
    
    Videos.find(query).count()