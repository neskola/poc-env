'use strict';

// use these variables until angular-app can be used properly iow. jquery dependencies are removed
var fburl = 'https://poc-test-test.firebaseio.com';

var debug = false;

var maxTimeDiff = 30; // 30 seconds

// Declare app level module which depends on filters, and services
angular.module('myApp.config', [])

  // version of this seed app is compatible with angularFire 1.0.0
  // see tags for other versions: https://github.com/firebase/angularFire-seed/tags
  .constant('version', '1.0.0')

  // where to redirect users if they need to authenticate (see security.js)
  .constant('loginRedirectPath', '/login')

  // your Firebase data URL goes here, no trailing slash
  .constant('FBURL', 'https://poc-test-env.firebaseio.com')

  // double check that the app has been configured before running it and blowing up space and time
  .run(['FBURL', '$timeout', function(FBURL, $timeout) {
    if( FBURL.match('//INSTANCE.firebaseio.com') ) {
      angular.element(document.body).html('<h1>Please configure app/config.js before running!</h1>');
      $timeout(function() {
        angular.element(document.body).removeClass('hide');
      }, 250);
    }
  }]);

    // Initialize Firebase
  var config = {
    apiKey: "AIzaSyDGgo3DD4Dfe0qFyiGEUdiXqABmdAFT0X8",
    authDomain: "orxter-player.firebaseapp.com",
    databaseURL: "https://orxter-player.firebaseio.com",
    storageBucket: "orxter-player.appspot.com",
    messagingSenderId: "632027816567"
  };
  firebase.initializeApp(config);

