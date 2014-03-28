{View} = require 'atom'

class NoticeView extends View
  @content: ->
    @div tabindex: -1, class: 'dont-use-this-notice overlay from-top', click: 'dismiss', =>
      @div class: 'block highlight-error padded', 'Wait, what are you doing here'
      @p class: 'block', =>
        @text 'The package you actually want to install is '
        @strong 'merge-conflicts'
        @text '.'
      @p class: 'block', =>
        @text "You've got "
        @strong 'git-merge-conflicts'
        @text ' instead.'
      @p class: 'block text-subtle', 'click to dismiss'

  dismiss: ->
    @hide 'fast', => @remove()

module.exports =

  activate: (state) ->
    atom.workspaceView.append(new NoticeView())

  deactivate: ->

  serialize: ->
