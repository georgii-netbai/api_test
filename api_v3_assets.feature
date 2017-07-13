Feature: Testing of /api/v3/assets response

  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give correct search
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |a    |

  @Android @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give correct search
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |a    |

  @iOS @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give correct search
    Given same contract as for previous scenario
    When "ios" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |a    |



  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give correct search
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

   Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |a    |



  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give correct showcaseid
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |а    |



  @STB @/api/v3/assets
  Scenario Outline: Testing of status for assets when STB device give correct parameter
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  Examples:
    | parameter |value|
    |showcaseId |1    |
    |limit      |1    |
    |page       |1    |
    |search     |а    |



  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give incorrect parameter
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <parameter> equal <value>
    Then should be received "200" response status
    And should be received "error" response with correct structure

  Examples:
    |parameter |value|
    |showcaseId|a    |
    |showcaseId|-1   |
    |limit     |z    |
    |limit     |-1   |
    |page      |z    |
    |page      |-1   |
    |search    |;    |
    |search    |\n   |



  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give empty param
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with empty <param> parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure
  Examples:
    |param     |
    |search    |
    |limit     |
    |page      |
    |showcaseId|


    
  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give search param equal " "
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal " "
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response



   @Web @/api/v3/assets
   Scenario: Testing of status for assets when web device give 4 correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal ";" and "limit" equal "10" and "showcaseId" equal "1" and "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give 3 correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "10" and "showcaseId" equal "1" and "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give 2 correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <first param> equal <first val> and <second param> equal <second val>
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response
  Examples:
    |first param|first val|second param|second val|
    |search     |;        |limit       |10        |
    |showCaseId |1        |page        |1         |



  @Web @/api/v3/assets
  Scenario Outline: Testing of status for assets when web device give one correct and one incorrect parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter <correct param> equal <correct val> and <incorrect param> equal <incorrect val>
    Then should be received "200" response status
    And should be received "error" response with correct structure

  Examples:
    |correct param|correct val|incorrect param|incorrect val|
    |showcaseId   |1          |page           |-1           |
    |page         |1          |limit          |-1           |
    |limit        |1          |showCaseId     |-1           |
