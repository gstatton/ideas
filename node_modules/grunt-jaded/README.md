# grunt-jaded

compile jade templates with jaded

## Getting Started
Install this grunt plugin next to your project's [grunt.js gruntfile][getting_started] with: `npm install grunt-jaded`

Then add this line to your project's `grunt.js` gruntfile:

```javascript
grunt.loadNpmTasks('grunt-jaded');
```

[grunt]: https://github.com/cowboy/grunt
[getting_started]: https://github.com/cowboy/grunt/blob/master/docs/getting_started.md

## Documentation

```
jaded:
    app:
      src: [ "#{app.paths.client}/templates/*.jade" ]
      dest:  "#{app.paths.public}/templates"
      options:
        amd: true
        development: false
        rivets: false
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [grunt][grunt].

## Release History
_(Nothing yet)_

## License
Copyright (c) 2012 amurray  
Licensed under the MIT license.
