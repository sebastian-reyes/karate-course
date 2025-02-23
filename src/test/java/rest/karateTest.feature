Feature: plan de prueba

  Scenario: caso de prueba tipo GET
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    And match response.data[0].email == 'michael.lawson@reqres.in'
    And match response.data[0].id == '#number'
    Then status 200

  Scenario: caso de prueba tipo POST
    Given url 'https://reqres.in/api/users'
    And request
    """
    {
      "name": "sebastian",
      "job": "developer"
    }
    """
    When method POST
    Then status 201
    And match response.name == 'sebastian'
    And match response.job == 'developer'

  Scenario: caso de prueba tipo DELETE
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204