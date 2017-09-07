(function() {
    'use strict';

    angular.module('indico').directive('calendar', calendar);

    calendar.$inject = ['WorkerService'];

    function calendar(WorkerService) {
        return {
            restrict: "E",
            templateUrl: '/template/calendar',
            scope: {
                selected: '=',
                user: '=',
                worker: '=',
                selectDate: '&callbackFn'
            },
            link: function(scope) {
                scope.selected = _removeTime(scope.selected || moment());
                scope.month = scope.selected.clone();
                scope.year = moment().year();

                var start = scope.selected.clone();
                start.date(1);
                _removeTime(start.day(0));

                _updateSchedule(scope, start, scope.worker, scope.user);
                _buildMonth(scope, start, scope.month);

                scope.select = function(day) {
                    scope.selected = day.date;
                    scope.selectDate({day: day.date});
                };

                scope.next = function() {
                    var next = scope.month.clone();
                    _removeTime(next.month(next.month()+1).date(1));
                    scope.month.month(scope.month.month()+1);
                    _updateSchedule(scope, next, scope.worker, scope.user);
                    _buildMonth(scope, next, scope.month);
                };

                scope.previous = function() {
                    var previous = scope.month.clone();
                    _removeTime(previous.month(previous.month()-1).date(1));
                    scope.month.month(scope.month.month()-1);
                    _updateSchedule(scope, previous, scope.worker, scope.user);
                    _buildMonth(scope, previous, scope.month);
                };

                scope.hasSchedule = function(date) {
                    var dateString = date.year() + '-' + (date.month() + 1) + '-' + date.date();
                    for (var i = 0; i < scope.scheduleList.length; i++) {
                        if (dateString == scope.scheduleList[i]) {
                            return true;
                        }
                    }
                    return false;
                };
            }
        };
        
        function _removeTime(date) {
            return date.day(0).hour(0).minute(0).second(0).millisecond(0);
        }

        function _buildMonth(scope, start, month) {
            scope.weeks = [];
            var done = false, date = start.clone(), monthIndex = date.month(), count = 0;
            while (!done) {
                scope.weeks.push({ days: _buildWeek(date.clone(), month) });
                date.add(1, "w");
                done = count++ > 2 && monthIndex !== date.month();
                monthIndex = date.month();
            }
        }

        function _buildWeek(date, month) {
            var days = [];
            for (var i = 0; i < 7; i++) {
                days.push({
                    name: date.format("dd").substring(0, 1),
                    number: date.date(),
                    isCurrentMonth: date.month() === month.month(),
                    isToday: date.isSame(new Date(), "day"),
                    date: date
                });
                date = date.clone();
                date.add(1, "d");
            }
            return days;
        }

        function _updateSchedule(scope, dateMoment, worker, user_id) {
            scope.scheduleList = [];
            WorkerService.schedules(dateMoment.month()+2, dateMoment.year(), worker, user_id).then(function(data) {
                scope.scheduleList = data.data;
                _buildMonth(scope, dateMoment, scope.month);
            });
        }
    }
})();