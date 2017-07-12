# Created by egor at 12.07.17
Feature: Testing of /api/v3/showcase-groups response

  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when web device give "limit" equal 1
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when android device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when iOS device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when STB device give "limit" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when android device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when iOS device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when STB device give "page" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when web device give "limit" equal 1
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when android device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when iOS device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when STB device give "limit" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when android device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when iOS device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for prepaid contract when STB device give "page" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when STB device give "limit" equal 1
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when android device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when iOS device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when android device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when iOS device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when STB device give "page" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give "limit" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give "limit" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "limit" equal "\t"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give empty "limit" parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with empty "limit" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure


  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give "page" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give "page" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "\t"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give empty "page" parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with empty "page" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure
