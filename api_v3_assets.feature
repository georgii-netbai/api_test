Feature: Testing of /api/v3/assets response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct showcaseid
    Given "prepaid" contract with following parameters
    And balance for contract equal "0.01" rubles
    And there is "Humax 9000i" device added to contract
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct showcaseid
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @iOS @/api/v3/assets
  Scenario: Testing of status for assets when iOS device give correct showcaseid
    Given same contract as for previous scenario
    When "ios" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct showcaseid
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct limit equal 10
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct page equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give search equal " "
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal " "
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct showcaseid
    Given "prepaid" contract with following parameters
    And balance for contract equal "-0.01" rubles
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct limit equal 10
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct page equal 1
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give search equal " "
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal " "
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @STB @/api/v3/assets
  Scenario: Testing of status for assets when stb device give correct showcaseid
    Given "postpaid" contract with following parameters
    And there is "Humax 9000i" device added to contract
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/assets
  Scenario: Testing of status for assets when stb device give search equal " "
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal " "
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/assets
  Scenario: Testing of status for assets when stb device give correct limit equal 10
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @STB @/api/v3/assets
  Scenario: Testing of status for assets when stb device give ccorrect page equal 1
    Given same contract as for previous scenario
    When "stb" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "1"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Android @/api/v3/assets
  Scenario: Testing of status for assets when web device give correct showecaseid
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give incorrect showecaseid equal "a"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "a"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give incorrect showecaseid equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseid" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give empty showecaseid
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with empty "showcaseid" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure


  @Android @/api/v3/assets
  Scenario: Testing of status for assets when android device give correct limit equal 10
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give incorrect limit equal "z"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "z"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give limit equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give empty limit
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with empty "limit" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give incorrect page equal "z"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "z"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give incorrect page equal "-1"
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give empty page
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with empty "page" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure


  @Android @/api/v3/assets
  Scenario: Testing of status for assets when Android device give search equal " "
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal " "
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/assets
  Scenario: Testing of status for assets when Android device give search equal ";"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal ";"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Android @/api/v3/assets
  Scenario: Testing of status for assets when Android device give search equal "\n"
    Given same contract as for previous scenario
    When "android" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal "\n"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response


  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give empty search
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with empty "search" parameter
    Then should be received "200" response status
    And should be received "error" response with correct structure


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
  Scenario: Testing of status for assets when web device give 2 correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "search" equal ";" and "limit" equal "10"
    Then should be received "200" response status
    And should be received "success" response with correct structure
    And "items" block should be presented in response
    And this block should be not empty
    And "total" block should be presented in response

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give 2 correct parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseId" equal "1" and "page" equal "1"
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
  Scenario: Testing of status for assets when web device give "showcaseId" correct and "page" incorrect parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "showcaseId" equal "1" and "page" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give "page" correct and "limit" incorrect parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "page" equal "1" and "limit" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure

  @Web @/api/v3/assets
  Scenario: Testing of status for assets when web device give "limit" correct and "showcaseId" incorrect parameters
    Given same contract as for previous scenario
    When "web" device has connection to service
    And this device sends requests to receive assets with parameter "limit" equal "1" and "showcaseId" equal "-1"
    Then should be received "200" response status
    And should be received "error" response with correct structure