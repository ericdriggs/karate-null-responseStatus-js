Feature: responseStatus setup.feature js function


  Scenario: responseStatus setup.feature js function

    Given url 'https://www.google.com'
    And retry until isResponseStatus200Config()
    When method GET
    Then status 200


