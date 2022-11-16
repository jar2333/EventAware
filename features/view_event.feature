Feature: View the details of an event
    As a person seeking to find events to attend
    I want to see a summary of event information

Background: I am a user on the platform

    Given I log in as jar2333
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"

Scenario: Go to event info for an event in home page

    Given I am in my home page
    And I do see an event with title "Halloween Party"
    But I click the event with title "Halloween Party"
    Then I am at an event info page 
    And the event title should be "Halloween Party"

Scenario: Go to event info for an event in profile page

    Given I am in the profile "jar2333"
    And I do see an event with creator "jar2333" and title "Halloween Party"
    Then I click the event with title "Halloween Party"
    Then I am at an event info page 
    And the event title should be "Halloween Party"

Scenario: Go to event info from the event's chat room

    Given I click the event chat button
    Then I am at a chat page
    And I click the event button
    Then I should be at an event info page


    
    
