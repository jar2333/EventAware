Feature: Authenticate user to access features of EventAware

    As a user of the platform
    I want to post events that friends and others can find
    So I authenticate to post events, register for events, and use the event chat

Background: The user is not authenticated

    Given I am not logged in as "jar2333"
    Then I am in the login page

Scenario: Authentication successful

    Given I submit valid credentials for user "jar2333"
    Then I am logged in as "jar2333"
    And I am in the home page

Scenario: Authentication failure

    Given I submit invalid credentials for user "jar2333"
    Then I am not logged in as "jar2333"
    And I am in the login page




    