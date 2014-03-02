module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    watch:
      compass:
        files: ["scss/**/*.scss"]
        tasks: ["compass"]

    compass:
      dist:
        options:
          sassDir: "scss"
          cssDir: "_site/css"
          imagesDir: "img"

    coffee:
      compile:
        options:
          bare: true
        files:
          "_site/js/app.js": ["coffee/**/*.coffee"]

  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-compass"

  grunt.registerTask "build", ["compass", "coffee"]