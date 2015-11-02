var app = angular.module("BlogApp", ["ngAnimate", 'ui.router', 'templates']);


app.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider){
        //Route and States
        $stateProvider
            //an abstract state allows it to serve as a parent for the child states below
            //templates not available in browser - moving to new branch to figure this out
            .state('dashboard', {
                abstract: true, 
                url: '/users/dashboard', 
                templateUrl: 'dashboard/layout.html'
            })
            .state('dashboard.myPosts', {
                url: '/users/myPosts', 
                templateUrl:'dashboard/myPosts.html'
                })
            .state('dashboard.writePost', {
                url: '/users/writePost',
                templateUrl: 'dashboard/writePost.html',
                controller: 'PostNewCtrl'
            });

        // default fallback route
        // $urlRouterProvider.otherwise('/');

        // enable HTML5 mode for SEO
        $locationProvider.html5Mode(true);
    }]);