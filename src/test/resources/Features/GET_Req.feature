Feature: GET Request Method

  Background:
    * url 'https://reqres.in'
    * header Accept = 'application/json'

    #Ex:1 Simple get request
  Scenario: GET Request1
    Given path '/api/users?page=1'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Ex:02 get request using background

  Scenario: GET Request2 with Background
    Given path '/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies


    #Ex:03 Get request with Path and Param
  Scenario: GET Request3 with Path and Param
    Given path '/api/users'
    And param page = 2
    When method GET
    Then status 200
