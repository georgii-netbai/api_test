# Created by egor at 12.07.17
Feature: Testing of /api/v3/showcases response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "limit" equal 1
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when android device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when iOS device give "limit" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when android device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when iOS device give "page" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "groupId" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when android device give "groupId" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when iOS device give "groupId" equal "1"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "append" equal "assets"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response

  @Android @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when android device give "append" equal "assets"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response

  @iOS @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when iOS device give "append" equal "assets"
    Given same contract as for previous scenario
    When "iOS" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "limit" equal 1
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "groupId" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when web device give "append" equal "assets"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give "limit" equal 1
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give "page" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give "groupId" equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give "append" equal "assets"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response




  @STB @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when STB device give "limit" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when STB device give "page" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when STB device give "groupId" equal "1"
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when STB device give "append" equal "assets"
    Given same contract as for previous scenario
    When "STB" device has connection to service
    And this device sends requests to receive showcases with parameter "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response




  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "limit" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "limit" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "\t"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give empty "page"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with empty "page" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "page" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "page" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "\t"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give empty "page"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with empty "page" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "groupId" equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give incorrect "groupId" equal "\r"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "groupId" equal "\t"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give empty "groupId"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with empty "groupId" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give all correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1" and "limit" equal "10" and "showcaseId" equal "1" and "append" equal "assets"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response



  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give correct "limit" and incorrect "showcaseId"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1" and "showcaseId" equal "-1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give correct "page" and incorrect "limit"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "page" equal "1" and "limit" equal "-1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response

  @Web @/api/v3/showcases
  Scenario: Testing status for showcases for postpaid contract when web device give correct "limit" and incorrect "page"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter "limit" equal "1" and "page" equal "-1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And every element of array "items" must have "assets" property
    And "total" block should be presented in response
