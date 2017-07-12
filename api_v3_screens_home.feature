# Created by egor at 12.07.17
Feature: Testing of /api/v3/screens/home response

  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for prepaid contract when web device give "limit" equal 1
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response

  @Android @/api/v3/screens/home
  Scenario: Testing status for screens for prepaid contract when android device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response

  @iOS @/api/v3/screens/home
  Scenario: Testing status for screens for prepaid contract when iOS device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response

  @STB @/api/v3/screens/home
  Scenario: Testing status for screens for prepaid contract when STB device give "limit" equal "1"
    Given same contract as for previous scenario
    And there is "Humax 9000i" device added to contract
    When "stb" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response


  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for prepaid contract when web device give "limit" equal "1"
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response


  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for postpaid contract when Web device give "limit" equal 1
    Given "postpaid" contract with following parameters
    When "web" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "showcases" block should be presented in response
    And this block should be not empty
    And "contentSources" block should be presented in response
    And "channels" block should be presented in response


  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for postpaid contract when web device give "limit" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for postpaid contract when web device give "limit" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive screens with parameter "limit" equal "\r"
    Then should be received "200" response status
    And should be received "error" response with correct structure


  @Web @/api/v3/screens/home
  Scenario: Testing status for screens for postpaid contract when web device give empty "limit" parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive screens with empty "limit" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure
