module.exports =
  config:
    cobcExecutablePath:
      default: null
      title: 'GNU Cobol executable path.'
      type: 'string'

  activate: ->
    console.log 'activate linter-cobc'
