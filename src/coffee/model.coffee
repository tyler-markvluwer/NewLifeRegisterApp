EventEmitter = require('events').EventEmitter # used to tell UI when to update

# stupid function to make it more pythony
print = (args) ->
    console.log args

class Model extends EventEmitter
    constructor: (@app_name, @app_desc) ->
        @users = []

    add_data: (data) ->
        @users.push data

module.exports = Model # Don't forget to export!!!