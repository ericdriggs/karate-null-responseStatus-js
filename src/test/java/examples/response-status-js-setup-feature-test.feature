Feature: responseStatus setup.feature js function

  Scenario: responseStatus setup.feature js function


    Given url 'https://www.google.com'
#    And retry until isResponseStatus200Setup()
    When method GET
    Then status 200

    * print 'responseStatus: ' + responseStatus

    * print 'printResponseStatus: ' + printResponseStatus()

    * print 'isResponseStatus200Setup: ' + isResponseStatus200Setup()


