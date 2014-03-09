module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    watch:
      compass:
        files: ["_scss/**/*.scss"]
        tasks: ["compass"]
      coffee:
        files: ["_coffee/**/*.coffee"]
        tasks: ["coffee"]

    compass:
      dev:
        options:
          sassDir: "_scss"
          cssDir: "_site/css"
          imagesDir: "img"
      dist:
        options:
          sassDir: "_scss"
          cssDir: "css"
          imagesDir: "img"

    concat:
      vendors_js:
        src: [
          "bower_components/jquery/dist/jquery.min.js"
        ]
        dest: "js/vendors.js"

    coffee:
      options:
        bare: true
      dist:
        files: "js/app.js": ["_coffee/**/*.coffee"]
      dev:
        files: "_site/js/app.js": ["_coffee/**/*.coffee"]

  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-compass"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-concat"

  grunt.registerTask "build", ["compass", "coffee", "concat"]