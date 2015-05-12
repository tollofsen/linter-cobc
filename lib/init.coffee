module.exports =
  config:
    cobcExecutablePath:
      default: null
      title: 'GnuCOBOL executable path.'
      type: 'string'

  activate: ->
    console.log 'activate linter-cobc'
