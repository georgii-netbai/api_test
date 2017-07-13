# Created by egor at 12.07.17
Feature: Testing of /api/v3/showcases response

  @Web @/api/v3/showcases
  Scenario Outline: Testing status for showcases for prepaid contract when web device give correct param
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|

  @Android @/api/v3/showcases
  Scenario Outline: Testing status for showcases for prepaid contract when android device give correct param
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|

  @iOS @/api/v3/showcases
  Scenario: Testing status for showcases for prepaid contract when iOS device give give correct param
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|


  @Web @/api/v3/showcases
  Scenario Outline: Testing status for showcases for prepaid contract when web device give correct param
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|



  @Web @/api/v3/showcases
  Scenario Outline: Testing status for showcases for postpaid contract when web device give correct param
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|


  @STB @/api/v3/showcases
  Scenario Outline: Testing status for showcases for postpaid contract when STB device give correct param
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |param  |value |
    |limit  |1     |
    |page   |1     |
    |groupId|1     |
    |append |assets|



  @Web @/api/v3/showcases
  Scenario Outline: Testing status for showcases for postpaid contract when web device give one incorrect parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "error" response with correct structure

  Examples:
    |param  |value |
    |limit  |-1    |
    |limit  |\t    |
    |page   |-1    |
    |page   |\t    |
    |groupId|-1    |
    |groupId|\t    |
    |append |asset |


  @Web @/api/v3/showcases
  Scenario Outline: Testing status for showcases for postpaid contract when web device give empty param
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with empty <param> parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure
  Examples:
    |param  |
    |limit  |
    |page   |
    |groupId|
    |append |



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
  Scenario Outline: Testing status for showcases for postpaid contract when web device give one correct and one incorrect param
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcases with parameter <correct param> equal <correct value> and <incorrect param> equal <incorrect value>
    Then should be received "200" response status
    And should be received "error" response with correct structure

  Examples:
    |correct param|correct value|incorrect param|incorrect value|
    |limit        |1            |showcaseId     |-1             |
    |page         |1            |limit          |-1             |
    |limit        |1            |page           |-1             |
