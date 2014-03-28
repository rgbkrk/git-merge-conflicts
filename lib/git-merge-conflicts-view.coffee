{View} = require 'atom'

module.exports =
class GitMergeConflictsView extends View
  @content: ->
    @div class: 'git-merge-conflicts overlay from-top', =>
      @div "The GitMergeConflicts package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "git-merge-conflicts:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "GitMergeConflictsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
