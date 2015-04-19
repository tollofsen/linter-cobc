##{exec, child} = require 'child_process'
linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"

class LinterCobc extends Linter
  @syntax: 'source.cobol'

  cmd: 'cobc -fsyntax-only'

  linterName: 'cobc'

  regex: ': (?P<line>\\d+): ((?P<error>Error)|(?P<warning>Warning)): (?P<message>.+)[\\n\\r]'

  constructor: (editor) ->
    super(editor)

    atom.config.observe 'linter-cobc.cobcExecutablePath', =>
      @executablePath = atom.config.get 'linter-cobc.cobcExecutablePath'

  destroy: ->
    atom.config.unobserve 'linter-cobc.cobcExecutablePath'

  errorStream: 'stderr'

module.exports = LinterCobc
