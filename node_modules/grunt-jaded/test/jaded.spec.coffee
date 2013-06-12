shell  = require 'shelljs/global'
should = require 'should'
module.exports = 
  "grunt-jaded":  
    "can compile files": (done) ->       
      cd "test"
      cat("./public/templates/test.js")
        .should
        .equal cat("./public/templates/expected.js")
      rm './public/templates/test.js'
      done()