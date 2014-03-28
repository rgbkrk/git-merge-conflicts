GitMergeConflictsView = require './git-merge-conflicts-view'

module.exports =
  gitMergeConflictsView: null

  activate: (state) ->
    @gitMergeConflictsView = new GitMergeConflictsView(state.gitMergeConflictsViewState)

  deactivate: ->
    @gitMergeConflictsView.destroy()

  serialize: ->
    gitMergeConflictsViewState: @gitMergeConflictsView.serialize()
