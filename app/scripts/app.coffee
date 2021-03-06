'use strict'

angular.module('memberQueryBuilderApp', ['ngSocial'])
.filter('split', () ->
  (input, splitChar, splitIndex) ->
    input.split(splitChar)[splitIndex])
.directive('repeatDone', () ->
  (scope, element, attrs) ->
    scope.$evalAsync attrs.repeatDone)
