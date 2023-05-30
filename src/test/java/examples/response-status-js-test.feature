Feature: simple get responseStatus js

  Scenario: simple get responseStatus js

    * def assertResponseStatus =
    """
    function() {
      if( responseStatus != 200 ){
        throw ("expected responseStatus: 200, actual: " + responseStatus);
      }
    }
    """

    Given url 'https://www.google.com'
    When method GET
    Then status 200
    * match responseStatus == 200
    * assertResponseStatus()

