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



    
    
