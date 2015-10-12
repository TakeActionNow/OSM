angular.module('SvgMapApp').directive('svgMap', ['$compile', function ($compile) {
    return {
        restrict: 'A',
        templateUrl: '../../Content/img/worldHigh.svg',
        link: function (scope, element, attrs) {
            var regions = element[0].querySelectorAll('.land');
            angular.forEach(regions, function (region, key) {
                var regionElement = angular.element(region);
                regionElement.attr("region", "");
                $compile(regionElement)(scope);
            });
        }
    }
}])

angular.module('SvgMapApp').directive('region', ['$compile', function ($compile) {
    return {
        restrict: 'A',
        scope: true,
        link: function (scope, element, attrs) {
            scope.elementId = element.attr("id");
            scope.regionClick = function () {
                alert('ElementId: ' + scope.elementId + 'Element title: ' + element.attr("title") );
            };
            element.attr("ng-click", "regionClick()");
            element.removeAttr("region");
            $compile(element)(scope);
        }
    }
}]);
