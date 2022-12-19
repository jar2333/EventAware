Feature: Register user to access features of EventAware

    As someone who is not a user of the platform
    I want to post events that friends and others can find
    So I register to post events, register for events, and use the event chat

Background: The user is not authenticated

Scenario: Authentication successful

    Given I am in the registration page
    And I submit registration credentials "password" for user "jar2333" with name "Jose"
    Then I should be in the login page
    And there should be a user "jar2333" with password "password"