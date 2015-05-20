module.exports =
  config:
    cobcExecutablePath:
      default: ''
      title: 'GnuCOBOL executable path.'
      type: 'string'

  activate: ->
    console.log 'activate linter-cobc'
