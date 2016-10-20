# Declare app level module which depends on filters, and services
angular.module('myApp', ['firebase.utils', 'firebase.auth' ])

  .run(['$rootScope', 'Auth', ($rootScope, Auth) ->  
    # track status of authentication
    Auth.$onAuth (user) ->
      console.log(user)
      $rootScope.loggedIn = !!user
  ])
