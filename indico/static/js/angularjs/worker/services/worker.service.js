(function(){
    'use strict';

    angular
        .module('indico.worker.services')
        .factory('WorkerService', WorkerService);

    WorkerService.$inject = ['$http'];

    function WorkerService($http){
        return {
            schedules: schedules
        };

        function schedules(mes, ano, worker, user_id) {
            return $http.get('/api/v1/dateservices/' + mes + '/' + ano + '/' + worker + '/' + user_id);
        }
    }
})();
