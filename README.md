# Front-End Scripts

A serie of useful scripts to make more easier and remove dependencies of languages and complex tools to do some tasks of our daily job.

The idea is simplify daily tasks to remove dependencies of grunt, gulp or other task runners. 'Cause **[Keep It Simple Stupid](https://en.wikipedia.org/wiki/KISS_principle)** is essencial these days.

Note: You can add a script or update a existent one.

## Why?

For every non-nodejs projects which depends on Front-end Tasks you need install
node, npm, grunt or gulp, grunt or gulp dependencies... OH MY GODNESS!

Let's be honest, your Django project needs nodejs/npm/grunt/gulp only to run
front-end tasks???

The Answer is **No**.

### How it works?

You can save the script in some folder and use it or load from your PATH to use as CLI command, depends from whatever you want.

To use this scripts as a CLI command:

```bash
git clone https://github.com/raphamorim/shell-script-frontend.git --depth 1
cd ./shell-script-frontend && make install
```

## Scripts

### Compress

Compress (remove all white spaces from any file [example={JS | CSS | HTML} files])

```
fs-compress <path-to-file> <optional-new-file>
```

Ex: `fs-compress base.css base.min.css` or `fs-compress index.html`

Replace: [gulp-compress](https://www.npmjs.com/package/gulp-compress), [grunt-contrib-compress](https://github.com/gruntjs/grunt-contrib-compress), ...

### Concat

Concatenize files

```
fs-concat [<path-to-file>] --output=<file-path>
```

Ex: `fs-concat js/*/**.js --output="./app.js"` or `fs-concat css/reset.css css/base.css --output="style.css" `

Replace: [grunt-contrib-concat](https://github.com/gruntjs/grunt-contrib-concat), [gulp-concat](https://www.npmjs.com/package/gulp-concat), ...

### Clean

Clean files and folders

```
fs-clean [<file-or-path-dir>]
```

Ex: `fs-clean css/*.css fonts/*/**.ttf javascript/app.js`

Replace: [grunt-contrib-clean](https://www.npmjs.com/package/grunt-contrib-clean), [gulp-clean](https://www.npmjs.com/package/gulp-clean), ...

