class FormSerializer
	constructor: () ->
		@data_dict = {}

	serialize: () ->
		@getFieldValue('first-name')
		@getFieldValue('last-name')
		@getFieldValue('email')

		@getCheckboxValue('taco-box')

		console.log @data_dict

		return @data_dict

	getFieldValue: (id) ->
		@data_dict[id] = document.getElementById(id).value

	getCheckboxValue: (id) ->
		checked = $('#' + id + ':checked').val()
		checked = if checked then checked else 'off'

		@data_dict[id] = checked

module.exports = FormSerializer