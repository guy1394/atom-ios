IosView = require './ios-view'

module.exports =
  iosView: null

  activate: (state) ->
    @iosView = new IosView(state.iosViewState)

  deactivate: ->
    @iosView.destroy()

  serialize: ->
    iosViewState: @iosView.serialize()
