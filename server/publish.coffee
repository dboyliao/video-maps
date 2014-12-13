Meteor.publish "allVideos", (mPage, nPerPage, qeury) ->
	if not nPerPage
		nPerPage = nPerPageDefault
	if not mPage
		mPage = 0 
	if not qeury
		qeury = {}

	kSkips = nPerPage*mPage
	console.log "kSkips = "
	console.log kSkips

	Videos.find qeury, {skip:kSkips, limit:nPerPage}

Meteor.publish "allCommunity", ->
	Community.find()