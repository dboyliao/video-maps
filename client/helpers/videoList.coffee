Template.videoList.helpers
  videoList: -> 
    searchWords = Session.get("searchWords")
    Videos.find {title:{$regex:searchWords,$options:"i"}}, {limit:40}