Template.video.rendered = ->
	$("video").map -> 
		videojs @, JSON.parse($(@).attr("data-setup"))