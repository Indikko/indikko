(function () {
    'use strict';

    angular
        .module(
            'indico.worker', 
                ['indico.worker.controllers', 
                'indico.worker.services']
        );

    angular
        .module('indico.worker.controllers', []);

    angular
        .module('indico.worker.services', []);
})();
