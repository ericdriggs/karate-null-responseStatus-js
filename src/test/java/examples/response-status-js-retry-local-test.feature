Feature: responseStatus local js function

  Scenario: responseStatus local js function


    * def isResponseStatus200Local =
    """
    function() {
      if( responseStatus != 200){
        karate.log("Retry since expectedStatus 200 != actual responseStatus: " + responseStatus);
        return false;
      }
      return true;
    }
    """

    Given url 'https://www.google.com'
    And retry until isResponseStatus200Local()
    When method GET
    Then status 200


