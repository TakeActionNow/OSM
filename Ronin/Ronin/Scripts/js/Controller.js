var module = angular.module('SvgMapApp', ['ngRoute']);


module.controller('MainCtrl', ['$scope', function ($scope) {
    var states = ["AD", "AE", "AS", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FM", "FL", "GA", "GU", "HI", "ID", "IL",
        "IN", "IA", "KS", "KY", "LA", "ME", "MH", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM",
        "NY", "NC", "ND", "MP", "OH", "OK", "OR", "PW", "PA", "PR", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VI", "VA",
        "WA", "WV", "WI", "WY"];
    $scope.createDummyData = function () {
        var dataTemp = {};
        angular.forEach(states, function (state, key) {
            dataTemp[state] = { value: Math.random() }
        });
        $scope.dummyData = dataTemp;
    };
    $scope.createDummyData();
}]);

var configFunction = function($routeProvider)
{
    $routeProvider.
    when('/Canada', {
        templateUrl: 'Home/Canada'
    })
    .when('/United States', {
        templateUrl: 'Home/Amerika'
    })
    .when('/Netherlands', {
        templateUrl: 'Home/Netherlands'
    }
    );
}

configFunction.$inject = ['$routeProvider'];
module.config(configFunction);


module.filter('map_colour', [function () {
    return function (input) {
        var b = 255 - Math.floor(input * 255);
        var g = Math.floor(input * 255);
        return "rgba(255," + g + "," + b + ",1)";
    }
}]);



