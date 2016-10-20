
# use these variables until angular-app can be used properly iow. jquery dependencies are removed
fburl = 'https://poc-test-test.firebaseio.com'
debug = false
maxTimeDiff = 3600 # 5 minutes

# Declare app level module which depends on filters, and services
angular.module('pocTest.config', [])

  # version of this seed app is compatible with angularFire 1.0.0
  # see tags for other versions: https://github.com/firebase/angularFire-seed/tags
  .constant('version', '1.5.8')

  # where to redirect users if they need to authenticate (see security.js)
  .constant('loginRedirectPath', '/index.html')

  # your Firebase data URL goes here, no trailing slash
  .constant('FBURL', 'https://poc-test-env.firebaseio.com')
  .run(['FBURL', '$timeout'])

  # Initialize Firebase
config = {
  apiKey: "AIzaSyAOlnjUAdOmoreEsfdNPQyXHWMnVMZXm4c",
  authDomain: "poc-test-env.firebaseapp.com",
  databaseURL: "https://poc-test-env.firebaseio.com",
  storageBucket: "poc-test-env.appspot.com",
  messagingSenderId: "1020826859877"
}
console.log(config)
firebase.initializeApp(config)

