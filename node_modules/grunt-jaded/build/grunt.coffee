root       = require('path').join __dirname, "../"
gruntConfig =
  mocha: 
    all:
      src: "#{root}/test/*.coffee" 
      options: 
        reporter:    'spec'
        ui:          'exports'
        ignoreLeaks: 'true'
  jaded:
    app:
      src: [ "#{root}/test/views/**/*.jade" ]
      dest:  "#{root}/test/public/templates"
      options:
        amd: true
        development: false
        rivets: false

module.exports = (grunt) ->

  ## init config  
  grunt.initConfig gruntConfig
  grunt.loadNpmTasks 'grunt-simple-mocha'
  grunt.loadTasks 'tasks'

  ## default 
  grunt.registerTask "default", "jaded"