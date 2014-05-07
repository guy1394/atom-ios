{View} = require 'atom'

module.exports =
class IosView extends View
  @content: ->
    @div class: 'ios overlay from-top', =>
      @div "The Ios package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "ios:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "IosView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
