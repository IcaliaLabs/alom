# Requirement
### Define variables for each gulp plugin ###
gulp = require 'gulp'
sass = require 'gulp-sass'
autoprefixer = require 'gulp-autoprefixer'
notify = require 'gulp-notify'
concat = require('gulp-concat')

browserSync = require 'browser-sync'
bs1 = browserSync.create("first server")

# Paths
### You can also use a local url, in that case, use browserSync.init proxy: local ###
local = {  baseDir: "/"  }

srcs =
    scss: 'scss/**/*.scss'
    html: '*.html'
    watch:
        scss: 'scss/**/*.scss'
        html: '*.html'

dests =
    css: 'dist/css'
    html: 'dist/'

### Define all your source files here ###
sync = 
    css: 'dist/css/**/*.css'
    html: 'dist/*.html'

# Tasks
### On each source file change, trigger a browsersync.reload ###
gulp.task 'browser-sync', ->
    bs1.init({
	    port: 3014,
	    server: "./dist"
	})
    gulp.watch(sync.css).on('change', bs1.reload);

gulp.task 'css', ->
    gulp.src srcs.scss
        .pipe sass().on('error', (err) ->
            notify(title: 'CSS Task').write err.line + ': ' + err.message  
            this.emit('end');
        )
        .pipe autoprefixer(cascade: false, browsers: ['> 3%'])
        .pipe(concat('alom.css'))
        .pipe gulp.dest dests.css

gulp.task 'html', ->
    gulp.src srcs.html
        .pipe gulp.dest dests.html
        read: false

gulp.task 'watch', ->
    gulp.watch srcs.watch.scss, ['css']
    gulp.watch srcs.watch.html, ['html']

gulp.task 'default', ['html', 'css', 'browser-sync', 'watch']