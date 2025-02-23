Feature: plan de prueba

  Scenario: test
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    And match response.data[0].email == 'michael.lawson@reqres.in'
    And match response.data[0].id == '#number'
    Then status 200