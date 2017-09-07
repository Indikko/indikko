(function() {
    'use strict';

    angular.module('indico').directive('onFinishRender', onfinishrender);

    onfinishrender.$inject = ['$timeout'];

    function onfinishrender($timeout) {
        return {
            restrict: "A",
            link: function(scope, element, attr) {
                if (scope.$last === true) {
                    $timeout(function () {
                        scope.$emit(attr.onFinishRender);
                    });
                }
            }
        };
    }
})();
