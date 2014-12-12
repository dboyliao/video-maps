Template.videoList.helpers
	videoList: ->
		searchWords = Session.get "searchWords"
		console.log "[videoList.coffee] searchWords = "
		console.log searchWords
		Videos.find {title:{$regex:searchWords,$options:"i"}}, {limit:40}