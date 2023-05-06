Feature: Sing in in the platform

  Background:
    * url baseURL
    * def expectedOutputLoginFailed = read('../responses/loginFailed.json')
    * def expectedOutputCreateUserFailed = read('../responses/createUserFailed.json')
    * def random_string =
         """
         function(s) {
           var text = "";
           var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
           for (var i = 0; i < s; i++)
             text += possible.charAt(Math.floor(Math.random() * possible.length));
           return text;
         }
         """
    * def userUnique =  random_string(10)

  @testCase-01
  Scenario: Create new user successfully
    Given path '/signup'
    And print userUnique
    And request {"username":"#(userUnique)", "password":"12345678"}
    When method POST
    Then status 200
    And match response contains ""
    And print response

  @testCase-02
  Scenario: Create existing user
    Given path '/signup'
    And request {"username":"horacioss2", "password":"1234567890"}
    When method POST
    Then status 200
    And match response == expectedOutputCreateUserFailed
    And print response