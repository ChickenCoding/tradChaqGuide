module.exports = (grunt) ->
  grunt.initConfig
    imagemin :
      default :
        files :
          "build/img/diagradsmaoisdj.png" : "img/diagradsmaoisdj.png"
          "output/img/diagradsmaoisdj.png" : "img/diagradsmaoisdj.png"


    concat :
      options :
        separator : " "
      layout :
        src : ['markdown/sommaire.md', 'markdown/chapters/**/*.md']
        dest : 'output/build.md'

    markdown :
      layout :
        options :
          #todo : layout
          template : "build/tpl/tpl.html"
        files :
          "build/index.html" : ["output/build.md"]

      html :
        files :
          "output/index.html" : ["output/build.md"]

      readme :
        files :
          "readme.html" : ["README.md"]




  # loader
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-markdown"
  grunt.loadNpmTasks "grunt-contrib-imagemin"

  # registerer
  grunt.registerTask 'default', 'concat:layout'

  grunt.registerTask 'layout', [
    'concat:layout'
    'markdown:layout'
    'imagemin'
  ]

  grunt.registerTask 'concatOnly', 'concat:layout'

  grunt.registerTask 'noLayout', [
    'concat:layout'
    'imagemin'
    'markdown:html'
  ]

  grunt.registerTask 'readme', 'markdown:readme'
