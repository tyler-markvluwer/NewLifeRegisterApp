React = require('react')
FormGroupView = require('./formGroupView')
FormCheckboxView = require('./formCheckboxView')
FormButton = require('./formButton')
FormSerializer = require('./formSerializer')

# tag factories
div = React.createFactory('div')
form = React.createFactory('form')

# View Class
userFormView = React.createClass
    #################################
    #       User Functions
    #################################
    submit: ->
        formSerializer = new FormSerializer()
        formSerializer.serialize()

    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        @props.model.on 'change', @update

    update: ->
        console.log "updating"
        @forceUpdate()

    render: ->
        form
            role: 'form'

            # First Name input
            FormGroupView
                id: 'first-name'
                innerText: 'First Name:'
                type: 'text'

            # Last Name Input
            FormGroupView
                id: 'last-name'
                innerText: 'Last Name:'
                type: 'text'
            
            # Email Input
            FormGroupView
                id: 'email'
                innerText: 'Email Address:'
                type: 'email'

            # Checkbox Input
            FormCheckboxView
                id: 'taco-box'
                innerText: 'Do you like tacos?'

            FormButton
                id: 'submit-button'
                innerText: 'Submit'
                onClick: @submit


module.exports = React.createFactory(userFormView)