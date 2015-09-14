React = require('react')

div = React.createFactory('div')
img = React.createFactory('img')

# View Class
centeredImageView = React.createClass
    #################################
    #       React Functions
    #################################

    render: ->
        IMG_STYLE = {
           width: @props.scale
           height: 'auto'
        }
        
        div
            className: 'row' # requires bootstrap to work
            div
                className: 'span4'
            div
                className: 'span4'
                img
                    className: 'center-block'
                    src: @props.src
                    style: IMG_STYLE
            div
                className: 'span4'

module.exports = React.createFactory(centeredImageView)
