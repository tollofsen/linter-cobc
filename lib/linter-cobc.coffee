linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"
{CompositeDisposable} = require "atom"

class LinterCobc extends Linter
  @syntax: 'source.cobol'

  cmd: 'cobc -fsyntax-only'

  linterName: 'cobc'

  regex: ': (?P<line>\\d+): ((?P<error>Error)|(?P<warning>Warning)): (?P<message>.+)[\\n\\r]'

  constructor: (editor) ->
    super(editor)

    @disposables = new CompositeDisposable

    @disposables.add atom.config.observe 'linter-cobc.cobcExecutablePath', =>
      @executablePath = atom.config.get 'linter-cobc.cobcExecutablePath'

  destroy: ->
    @disposables.dispose()

  errorStream: 'stderr'

module.exports = LinterCobc
