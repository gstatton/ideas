module.exports = (grunt) ->
  path = require 'path'
  jaded = require 'jaded'
  grunt.registerMultiTask "jaded", "compile jade templates", ->
    files = grunt.file.expandFiles @file.src
    grunt.file.mkdir @file.dest
    for file in files
      base = path.basename file, path.extname file
      dest = path.join @file.dest, "#{base}.js"
      # for includes
      @data.options['filename'] = file
      templ = jaded.compile grunt.file.read(file), @data.options
      grunt.file.write dest, templ