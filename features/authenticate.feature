Feature: Authenticate user to access features of EventAware

    As a user of the platform
    I want to post events that friends and others can find
    So I authenticate to post events, register for events, and use the event chat

Background: The user is not authenticated

    Given there is a user "jar2333" with password "password"
    And I am not logged in as "jar2333"
    Then I am in the login page

Scenario: Authentication successful

    Given I submit credentials "password" for user "jar2333"
    Then I should be in my home page
    And I am logged in as "jar2333"

Scenario: Authentication failure

    Given I submit credentials "wrongpassword" for user "jar2333"
    Then I should be in the login page
    And I am not logged in as "jar2333"

Scenario: Nonexistent user

    Given I submit credentials "wrongpassword" for user "nonexistent_user"
    Then I should be in the login page
    And I am not logged in as "nonexistent_user"





    