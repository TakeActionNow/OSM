//angular.module('SvgMapApp').directive('svgMap', ['$compile', function ($compile) {
//    return {
//        restrict: 'A',
//        templateUrl: '../../Content/img/worldHigh.svg',
//        link: function (scope, element, attrs) {
//            var regions = element[0].querySelectorAll('.land');
//            angular.forEach(regions, function (region, key) {
//                var regionElement = angular.element(region);
//                regionElement.attr("region", "");
//                regionElement.attr("dummy-data", "dummyData");
//                $compile(regionElement)(scope);
//            });
//        }
//    }
//}])

//angular.module('SvgMapApp').directive('region', ['$compile', function ($compile) {
//    return {
//        restrict: 'A',
//        scope: {
//            dummyData: "="
//        },
//        link: function (scope, element, attrs) {
//            scope.elementId = element.attr("id");
//            scope.regionClick = function () {
//                alert('hello?' + scope.elementId);
//                alert('Test:' + scope.dummyData[scope.elementId]);
//                //alert(scope.dummyData[scope.elementId].value);
//                alert('working?');
//            };

//            element.attr("ng-click", "regionClick()");
//            element.removeAttr("region");
//            $compile(element)(scope);
//        }
//    }
//}])
angular.module('SvgMapApp').directive('svgMap', ['$compile', function ($compile) {
    return {
        restrict: 'A',
        templateUrl: '../../Content/img/worldHigh.svg',
        link: function (scope, element, attrs) {
            var regions = element[0].querySelectorAll('.land');
            angular.forEach(regions, function (path, key) {
                var regionElement = angular.element(path);
         
                regionElement.attr("region", "");
                regionElement.attr("dummy-data", "dummyData");
                $compile(regionElement)(scope);
            })
        }
    }
}]);

angular.module('SvgMapApp').directive('region', ['$compile', function ($compile) {
    return {
        restrict: 'A',
        scope: {
            dummyData: "="
        },
        link: function (scope, element, attrs) {
            scope.elementId = element.attr("id");
            scope.regionClick = function () {
                alert(scope.dummyData[scope.elementId].value);
            };
            element.attr("ng-click", "regionClick()");
            element.attr("ng-attr-fill", "{{dummyData[elementId].value | map_colour}}");
            element.removeAttr("region");
            $compile(element)(scope);
        }
    }
}]);


