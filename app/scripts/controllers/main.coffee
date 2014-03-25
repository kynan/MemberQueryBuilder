'use strict'

angular.module('memberQueryBuilderApp')
  .controller 'MainCtrl', ['$scope', '$http', ($scope, $http) ->
    $scope.query = {}
    $http.get('criteria.json').success (data) ->
      $scope.criteria = data.criteria
    $scope.submit = () ->
      querystring = "http://data.parliament.uk/membersdataplatform/services/mnis/members/query/"
      querystring += ("#{k}=#{v}" for k, v of $scope.query if v != "").join('|')
      console.log querystring
  ]
