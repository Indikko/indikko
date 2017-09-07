(function () {
    'use strict';

    angular
        .module('indico.worker.controllers')
        .controller('HomeWorkerController', HomeWorkerController);

    HomeWorkerController.$inject = ['$scope'];

    function HomeWorkerController($scope) {
        moment.locale('pt-BR');
        $scope.day = moment();
        $scope.selectDate = _selectDate;
        $scope.user = document.getElementById('userId').value;
        $scope.worker = 1;

        function _selectDate(day) {
            $("#service-detail").html('');
            $.get('get_day_service/',{day:day.date(), month: day.month()+1, year:day.year()}, function(data){
                $("#day-service").html(data);
            });
        }
    }
})();
