Template.search.helpers
	nVideoPerPage: ->
		Session.get("nVideoPerPage")

Template.search.events
	"change #searchWords": (e) ->
		e.stopPropagation()
		console.log e
		newSearchWords = $(e.target).val()
		Session.set("searchWords",newSearchWords)
		Router.go 'videos', page:"0"