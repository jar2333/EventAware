Feature: Register to events, so that they show up in your profile

    I am a user of EventAware
    That wants to let friends know I am attending an event
    So I will register for an event

Background: I am a user of EventAware

    Given I log in as jar2333
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"

Scenario: I register for an event, and it shows up on my profile

    Given the event title is "Halloween Party"
    And I am not registered
    But I click the register button
    Then I am registered
    And I click the profile button
    Then I should see an event with title "Halloween Party"

Scenario: I unregister for an event, and it does not show up on my profile

    Given the event title is "Halloween Party"
    And I am not registered
    Then I click the register button
    And I am registered
    But I click the unregister button
    Then I am not registered
    And I click the profile button
    Then I should not see an event with title "Halloween Party"