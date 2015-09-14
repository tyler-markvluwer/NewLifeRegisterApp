React = require('react') # no ./ prefix
CenteredImage = require('./centeredImageView')
RegisterFormApp = require('./userFormView') # notice the './' prefix above for a local file

# import the Model class
Model = require('./model') # doesn't have to be called model

# create an instance of a model
# (consider using a singleton pattern)
model = new Model('app_name', 'app_purpose') # uppercase 'M' to match import name

# make model global for instructional purposes
window.model = model

# Set the Background image
imageUrl = 'res/Out-of-focus-lights.jpg'
$(document).css('background-image', 'url(' + imageUrl + ')')

# render the logo at top
React.render(
    CenteredImage
        src: 'res/NewLifeLogo.png'
        scale: '30%'        
    document.getElementById('logo-view-mount') # where to mount it
)

# render body of form
React.render(
    RegisterFormApp # which component to mount
        model: model
    document.getElementById('app-view-mount') # where to mount it
)