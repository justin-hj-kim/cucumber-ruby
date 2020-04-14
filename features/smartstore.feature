@Smart @Ecom
Feature: Smartstore


  @JIRA-KIM-8 @Login
  Scenario: Login Pass (uid:5fb71e05-20f0-447c-a5e7-88e685c2b7f1)
    Given that the user has navigated over to the smartstore
    When the user clicks login
    And the user provides proper credentials
    Then the user should be able to log in

  @Login
  Scenario: Login Fail (uid:499aed20-e212-4fc2-9b8e-79a16e8a88a5)
    Given that the user has navigated over to the smartstore
    And the user clicks login
    When the user provides invalid credentials
    Then the website should reject their login

  @Ecom @Checkout
  Scenario: Checkout (uid:8b5a4c86-f26c-4ecd-84a0-86524efab2cd)
    Given that the user has navigated over to the smartstore
    And the user types something into the search bar
    When the user selects that item
    And adds it to the card
    Then the user can checkout the item

  @Smart @ContactUs
  Scenario: ContactUS (uid:2a71a9db-2887-4df9-95dd-ace88760a8a6)
    Given that the user has navigated over to the smartstore
    And the user clicks on contact us button
    When the user fills out the name, email, and inquiry fields
    And presses submit
    Then the store should display a successful inquiry message.
