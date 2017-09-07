/**
* hirerController
* @namespace indico.hirer.controllers
*/
(function () {
    'use strict';

    angular
        .module('indico.hirer.controllers')
        .controller('CategoryController', CategoryController);

    
    CategoryController.$inject = ['$scope', 'Hirer', '$sce'];


    /**
    * @namespace CategoryController
    */
    function CategoryController($scope, Hirer, $sce) {
        $scope.id = '';
        $scope.evaluation_counter = 0;
        $scope.category = '';
        $scope.getCategoryByID = getCategoryByID;
        $scope.lstSkillFilter = [];
        $scope.lstNeighborhoodFilter = [];
        $scope.critOrderBy = 'get_average_trust';
        $scope.ascendente = true;

        $scope.myhtml = 'get_average_trust';
        //app.filter('unsafe', function($sce) { return $sce.trustAsHtml; });

        if(typeof user_id != 'undefined')
            getUserByID(user_id.value);
        
	$scope.$on('exec_js', function(e) {

            $(".starrr").starrr();
    
            $('[id^="stars-"]').on('starrr:change', function(e, value){
                $('#count-'+e.currentTarget.id).html(value);
            });


            $('[data-toggle="popover"]').popover();

	    $("[id^='btn_send_rank_']").click(
		function(e){
                    var str_id = e.target.id;
                    var idx = str_id.lastIndexOf("_");
                    var worker_id = str_id.slice(idx+1);
                    var evaluate_form = {};

                    evaluate_form['punctuality']     = $('#count-stars-punctuality_'+worker_id).html();
                    evaluate_form['quality']        = $('#count-stars-hability_'+worker_id).html();
                    evaluate_form['trust']           = $('#count-stars-trust_'+worker_id).html();
                    evaluate_form['cost_benefit']    = $('#count-stars-cost_benefit_'+worker_id).html();
                    evaluate_form['endorsement']     = $('#endorsement_'+worker_id).is(':checked');
                    evaluate_form['comments']        = $('#comments_'+worker_id).val();
                    
                    var r = confirm("Você confirma o envio desta avaliação?");
                    if (r == true){
                        $('#rankModal_'+worker_id).modal("hide");
                        for(var i in $scope.category.workers){
                            if($scope.category.workers[i].id == worker_id){
                                $scope.category.workers[i].showFormForEvaluate = false;
                                evaluate_form['hirer_id'] = user_id.value;
                                evaluate_form['worker_id'] = $scope.category.workers[i].id;
                            }
                        }
                        evaluateWorker(evaluate_form);
                        console.log(evaluate_form);
                        $scope.$apply();
                        location.pathname = 'usuario/obrigado/';
                    }
	        }
	    );

        });

     $scope.resetcounter= function(){
            $scope.evaluation_counter = 0;
            return $scope.evaluation_counter;
        }

        $scope.incrementcounter = function(){
            $scope.evaluation_counter = $scope.evaluation_counter + 1;
            return $scope.evaluation_counter;
        }

        $scope.phoneNumber = function (id) {
            if(typeof user_id != 'undefined'){
                    getWorkerByID(id);
                    var phones = $scope.worker.get_all_numbers;
                    var final_number = "";
                    for (var num in phones){
                        final_number = final_number + "\n" + num;
                    }
                    if (final_number === "") {
                        return "Nenhum número informado."
                    }
                }
            
            return final_number;
        }

        $scope.init = function(id){
            $scope.id = id;
            getCategoryByID($scope.id);
        };

        $scope.orderBy = function(campo){
            $scope.critOrderBy = campo;
            $scope.ascendente = !$scope.ascendente;
        };

        $scope.notEvaluatedByUser = function(w, we){
            for (var k in we){
                if(angular.equals(w, we[k])){
                    return false;
                }
            }
            return true;
        };

        $scope.addSkillFilter = function(skill){
            var idx = $scope.lstSkillFilter.indexOf(skill);
            if(idx>-1){
                $scope.lstSkillFilter.splice(idx,1);
            }
            else{
                if(skill.length>0){
                    $scope.lstSkillFilter.push(skill);
                }
                else{
                    $scope.lstSkillFilter=[];
                }
            }
            console.log($scope.lstSkillFilter);
        };

        $scope.addNeighborhoodFilter = function(neighbohood){
            var idx = $scope.lstNeighborhoodFilter.indexOf(neighbohood);
            if(idx>-1){
                $scope.lstNeighborhoodFilter.splice(idx,1);
            }
            else{
                if(neighbohood.length>0){
                    $scope.lstNeighborhoodFilter.push(neighbohood);
                }
                else{
                    $scope.lstNeighborhoodFilter=[];
                }
            }
        };

        $scope.filterSkill = function(worker, index, workers){
            var worker_skills = []
            for(var idx in worker.skills){
                worker_skills.push(worker.skills[idx].description)
            }
            for(idx in $scope.lstSkillFilter){
                var skill = $scope.lstSkillFilter[idx];
                if(worker_skills.indexOf(skill)<0 && $scope.lstSkillFilter.length > 0){
                    return false;
                }
            }
            return worker;
        };

        $scope.filterNeighborhood = function(worker, index, workers){
            var worker_neighborhoods = []
            for(var idx in worker.get_neighborhood){
                worker_neighborhoods.push(worker.get_neighborhood[idx])
            }
            if($scope.lstNeighborhoodFilter.length>0){
                for(idx in $scope.lstNeighborhoodFilter){
                    var neighborhood = $scope.lstNeighborhoodFilter[idx];
                    if(worker_neighborhoods.indexOf(neighborhood)>-1){
                        return worker;
                    }
                }
            }
            else{
                return worker;
            }
            return false;
        };


        //activate();

        /**
        * @name activate
        * @desc Actions to be performed when this controller is instantiated
        * @memberOf indico.hirer.controllers.CategoryController
        */
        function activate() {
            Hirer.categories().then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                $scope.categories = data.data;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }
        /**
        * @name getUserProfile
        * @desc Get user profile
        * @memberOf indico.hirer.controllers.CategoryController
        */
        function getUserProfile() {
            Hirer.getUserProfile().then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                $scope.userProfile = data.data;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }

        /**
        * @name getCategoryByID
        * @desc Get Category by ID
        * @memberOf indico.hirer.controllers.CategoryController
        */
        function getCategoryByID(id) {
            Hirer.getCategoryByID(id).then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                var category = data.data;
                if(typeof $scope.user != 'undefined'){
                    var we = $scope.user.get_workers_evaluated;
                    for(var i in category.workers){
                        category.workers[i].showFormForEvaluate = true;
                        for (var k in we){
                            if(category.workers[i].id==we[k].id){
                                category.workers[i].showFormForEvaluate = false;
                            }
                        }
                    }
                }
                $scope.category = category;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }

	/**
        * @name getUserByID
        * @desc Get User by ID
        * @memberOf indico.hirer.controllers.CategoryController
        */
        function getUserByID(user_id) {
            Hirer.getUserByID(user_id).then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                $scope.user = data.data;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }

        function getWorkerByID(user_id) {
            Hirer.getWorkerByID(user_id).then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                $scope.worker = data.data;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }

	/**
        * @name evaluateWorker
        * @desc Evaluate worker
        * @memberOf indico.hirer.controllers.CategoryController
        */
        function evaluateWorker(data_rank) {
            Hirer.evaluateWorker(data_rank).then(successFn, errorFn);

            /**
            * @name successFn
            * @desc Update posts array on view
            */
            function successFn(data, status, headers, config) {
                $scope.msg = data.data;
            }


            /**
            * @name errorFn
            * @desc Show snackbar with error
            */
            function errorFn(data, status, headers, config) {
                $scope.error = data.error;
            }
        }

    }

})();
