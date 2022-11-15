Feature: Create events for others to join

    I am a user seeking to organize an event
    So I will create an event on EventAware

Background: I am a user on EventAware

    Given I log in as jar2333
    And I am in my home page

Scenario: I create an event from the home page

    
    And there should not exist an event with title "Movie Screening"
    And I click the create event button
    Then I should be on the create event page
    And I enter "Movie Screening" in the title field
    And I enter "bring your own seats" in the description field
    And I enter "12/31/2022" in the start date field
    And I enter "11:59pm" in the start time field
    And I enter "01/01/2023" in the end date field
    And I enter "12:01am" in the end time field
    But I click the confirm create button
    Then I should be at an event info page
    And the event creator should be "jar2333"
    And the event title should be "Movie Screening"
    And there should exist an event with title "Movie Screening"




