(function () {
    'use strict';

    angular
        .module('indico.hirer.controllers')
        .controller('HirerCalendarController', HirerCalendarController);


    HirerCalendarController.$inject = ['$scope'];

    function HirerCalendarController($scope) {
        moment.locale('pt-BR');
        $scope.day = moment();
        $scope.selectDate = _selectDate;
        $scope.user = document.getElementById('userId').value;
        $scope.worker = 0;

        function _selectDate(day) {
            $("#service-detail").html('');
            $.get('get_day_service/',{day:day.date(), month: day.month()+1, year:day.year()}, function(data){
                $("#day-service").html(data);
            });
        }
    }
})();
