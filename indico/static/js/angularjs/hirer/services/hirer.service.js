/**
 * Hirer
 * @namespace indico.hirer.services
 */

(function(){
    'use strict';

    angular
        .module('indico.hirer.services')
        .factory('Hirer', Hirer);

    Hirer.$inject = ['$http'];

    /**
     * @namespace Hirer
     * @returns {Factory}
     */
    function Hirer($http){
        /**
         * @name Hirer
         * @desc The Factory to be returned
         */
        var Hirer = {
            getUserProfile: getUserProfile,
            categories: categories,
            getCategoryByID: getCategoryByID,
            getUserByID: getUserByID,
            evaluateWorker: evaluateWorker
        };
        return Hirer;

        /**
         * @name getUserProfile
         * @desc Get profile from user
         * @returns {promise}
         * @memberOf indico.hirer.services.Hirer
         */
        function getUserProfile() {
            return $http.get('/api/v1/user/profile/');
        }

        /**
         * @name categories
         * @desc Get all Categories
         * @returns {promise}
         * @memberOf indico.hirer.services.Hirer
         */
        function categories() {
            return $http.get('/api/v1/categories/');
        }

        /**
         * @name getCategoryByID
         * @desc Get category by ID
         * @returns {promise}
         * @memberOf indico.hirer.services.Hirer
         */
        function getCategoryByID(id) {
            return $http.get('/api/v1/categories/'+id);
        }

        /**
         * @name getUserByID
         * @desc Get user by ID
         * @returns {promise}
         * @memberOf indico.hirer.services.Hirer
         */
        function getUserByID(user_id) {
            return $http.get('/api/v1/users/'+user_id);
        }

        /**
         * @name evaluateWorker
         * @desc Create new workerevaluation
         * @returns {promise}
         * @memberOf indico.hirer.services.Hirer
         */
        function evaluateWorker(data_rank) {
            return $http.post(
                '/api/v1/workerevaluation/', {
                    hirer: data_rank.hirer_id,
                    worker: data_rank.worker_id,
                    punctuality: data_rank.punctuality,
                    quality: data_rank.quality,
                    trust: data_rank.trust,
                    cost_benefit: data_rank.cost_benefit,
                    recommend: data_rank.endorsement,
                    testimonial: data_rank.comments,
					approved: false
            });
        }

    }
})();
