# {SIDEBAR_URI} = require './view/view-uri'
SIDEBAR_URI = 'atom://atom-dbg-sidebar'

module.exports =
class Sidebar2

	constructor: ->
		@content()

	content: ->
		@element = document.createElement 'div'
		# @element.setAttribute "tabIndex", -1
		@element.classList.add 'debug-sidebar'
		@element.textContent = "THIS IS MY SIDEBAR"
	
	# Tear down any state and detach
	destroy: ->
		@element.remove()

	getElement: ->
		@element

	getTitle: ->
		return 'Save Project'

	getIconName: ->
		return 'gear'

	getURI: ->
		return SIDEBAR_URI
