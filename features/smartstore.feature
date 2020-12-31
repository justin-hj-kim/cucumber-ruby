@Smart @Ecom @GH-1 @JIRA-KIM-8
Feature: Smartstore
    [SmartStore Link](https://community.smartbear.com/t5/TestComplete-Community/ct-p/TestComplete_forum)

    "* These tests are being carried out with Cucumber-Ruby"

  @JIRA-KIM-8 @Login
  Scenario Outline: Login Pass (uid:c564d639-34dd-4c90-b41f-de3aefc2371d)
    Given that the user has navigated over to the smartstore
    When the user clicks login
    And the user provides proper credentials
    Then the user should be able to log in

    Examples:
      | username | password | hiptest-uid |
      | justin | justinpass | uid:e16b344b-0a5b-4f0c-9d4e-59b11ed70551 |

  @Login
  Scenario: Login Fail (uid:0cd5d029-334d-4950-94e4-b684295ecdce)
    Given that the user has navigated over to the smartstore
    And the user clicks login
    When the user provides invalid credentials
    Then the website should reject their login

  @Ecom @Checkout
  Scenario: Checkout (uid:1f228ef7-95ac-49c0-8335-ef107d733a6d)
    Given that the user has navigated over to the smartstore
    And the user types something into the search bar
    When the user selects that item
    And adds it to the cart
    Then the user can checkout the item

  @Smart @ContactUs
  Scenario: ContactUS (uid:aee9d59e-6f96-4eee-a224-bc0b229cd1fc)
    Given that the user has navigated over to the smartstore
    And the user clicks on contact us button
    When the user fills out the YourName, YourEmail, and YourEnquiry fields 
    And presses submit
    Then the store should display a successful inquiry message.
