React = require('react')

# tag factories
button = React.createFactory('button')

# View Class
formCheckboxView = React.createClass
	#################################
    #       React Functions
    #################################

    render: ->
        # First Name input
        button
            id: @props.id
            className: 'btn btn-default'
            type: 'button'
            onClick: @props.onClick
            @props.innerText

module.exports = React.createFactory(formCheckboxView)