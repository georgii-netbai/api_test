# Created by egor at 12.07.17
Feature: Testing of /api/v3/showcase-groups response

  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for prepaid contract when web device give correct parameter
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |

  @Android @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for prepaid contract when android device give correct parameter
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |

  @iOS @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for prepaid contract when iOS device give correct parameter
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |


  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for prepaid contract when web device give correct parameter
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |



  @STB @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for postpaid contract when STB device give "limit" equal 1
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |

  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for prepaid contract when STB device give "limit" equal "1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |parameter|value|
    |limit    |1    |
    |page     |1    |



  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for postpaid contract when web device give incorrect parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter <param> equal <value>
    Then should be received "200" response status
    And should be received "error" response with correct structure
  Examples:
    |param|value|
    |limit|-1   |
    |limit|\t   |
    |page |-1   |
    |page |\t   |



  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for postpaid contract when web device give empty parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with empty <param> parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure
  Examples:
    |param|
    |limit|
    |page |



  @Web @/api/v3/showcase-groups
  Scenario: Testing status for showcase-groups for postpaid contract when web device give 2 correct parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with parameter "page" equal "1" and "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response



  @Web @/api/v3/showcase-groups
  Scenario Outline: Testing status for showcase-groups for postpaid contract when web device give one correct and one incorrect parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive showcase-groups with <correct param> equal <correct value> and <incorrect param> equal <incorrect value>
    Then should be received "200" response status
    And should be received "error" response with correct structure
  Examples:
    |correct param|correct value|incorrect param|incorrect value|
    |limit        |1            |page           |-1             |
    |limit        |-1           |page           |1              |
