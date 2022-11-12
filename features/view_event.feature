@wip
Feature: View the details of an event
    As a person seeking to find events to attend
    I want to see a summary of event information

Background: I am a user on the platform

    Given I am logged in as "jar2333"

Scenario: Go to event info for an event in home page

    Given I am in my home page
    And there is an upcoming event with title "Halloween Party"
    And I do see an event with title "Halloween Party"
    But I click the event with title "Halloween Party"
    Then I am on an event page 
    And the event title should be "Halloween Party"

Scenario: Go to event info for an event in profile page

    Given I am in the profile for user "jar2333"
    And there is an upcoming event with creator "jar2333" and title "Halloween Party"
    And I do see an event with creator "jar2333" and title "Halloween Party"
    Then I click the event with title "Halloween Party"
    Then I am on an event page 
    And the event title should be "Halloween Party"

Scenario: Go to event info from the event's chat room

    Given I am in a chat page
    And I click the back button
    Then I should be on an event page


    
    
