@wip
Feature: Register to events, so that they show up in your profile

    I am a user of EventAware
    That wants to let friends know I am attending an event
    So I will register for an event

@wip
Background: I am a user of EventAware

    Given I am logged in as "jar2333"
    And I am on an event page

@wip
Scenario: I register for an event, and it shows up on my profile

    Given the event title is "Halloween Party"
    And I am not registered
    But I press the register button
    Then I am registered
    And I click the profile tab
    Then I should see an event with title "Halloween Party"

@wip
Scenario: I unregister for an event, and it does not show up on my profile

    Given the event title is "Halloween Party"
    And I am registered
    But I press the register button
    Then I am not registered
    And I click the profile tab
    Then I should not see an event with title "Halloween Party"