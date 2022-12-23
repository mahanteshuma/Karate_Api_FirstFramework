Feature: Simple Test API

  Scenario: Test GET Request

    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
