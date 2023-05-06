Feature: Sing in in the platform

  Background:
    * url baseURL
    * def expectedOutputLoginFailed = read('../responses/loginFailed.json')

  @testCase-03
  Scenario: Login user successfully
    Given path '/login'
    And request {"username":"horacioss1", "password":"1234567890"}
    When method POST
    Then status 200
    And match response contains "Auth_token"
    And print response

  @testCase-04
  Scenario: Login user failed
    Given path '/login'
    And request {"username":"horacioss2", "password":"1234567890"}
    When method POST
    Then status 200
    And match response == expectedOutputLoginFailed
    And print response