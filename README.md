# poc-env
Test project for Firebase and Google Cloud Storage integration PoCs.

To get started install npm (https://www.npmjs.com/) and bower if not installed

$ npm install -g bower

Download project's dependencies by typing

$ bower install

Copy bower_components under public directory

$ cp -r bower_components public/ 

Build project's coffee scripts, add -w if you want watch and recompile when .coffee -files are changed

$ bower -cbo public/coffee/lib public/coffee/src

Start project by typing

$ firebase serve

Default listening port is localhost:5000
