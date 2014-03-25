'use strict'

angular.module('memberQueryBuilderApp')
  .controller 'MainCtrl', ['$scope', '$http', ($scope, $http) ->
    $http.get('criteria.json').success (data) ->
      $scope.criteria = data.criteria
  ]
