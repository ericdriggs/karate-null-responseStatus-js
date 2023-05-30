Feature: responseStatus variable tests

  Background:
    * def isResponseStatus200 =
    """
    function() {
      if( responseStatus != 200){
        karate.log("Retry since expectedStatus 200 != actual responseStatus: " + responseStatus);
        return false;
      }
      return true;
    }
    """



  #########################
  #####    passing    #####
  #########################
  Scenario: local js test


    Given url 'https://www.google.com'
    When method GET
    Then status 200

    * print 'responseStatus: ' + responseStatus
    * assert isResponseStatus200()

  Scenario: config js test

    Given url 'https://www.google.com'
    When method GET
    Then status 200

    * print 'responseStatus: ' + responseStatus
    * assert isResponseStatus200_config()

  #########################
  #####    failing    #####
  #########################
  Scenario: callSingle test


    Given url 'https://www.google.com'
    When method GET
    Then status 200

    * print 'responseStatus: ' + responseStatus
    * assert isResponseStatus200_callSingle()

  Scenario: call test


    Given url 'https://www.google.com'
    When method GET
    Then status 200

    * print 'responseStatus: ' + responseStatus
    * assert isResponseStatus200_call()
