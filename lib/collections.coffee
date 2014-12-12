@nPerPageDefault = 40
@nPerPage = nPerPageDefault

@Videos = new Meteor.Collection "ytVideos"

@VideosPages = new Meteor.Pagination Videos,
	perPage: 20
	itemTemplate: "video"
	templateName: "videoPages"  