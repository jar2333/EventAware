@wip
Feature: Create events for others to join

    I am a user seeking to organize an event
    So I will create an event on EventAware

@wip
Background: I am a user on EventAware

    Given I am logged in as "jar2333"

@wip
Scenario: I create an event from the home page

    Given I am in my home page
    And there does not exist an event with title "Movie Screening"
    And I press the create event button
    Then I am on a create event page
    And I enter "Movie Screening" in the title field
    And I enter "bring your own seats" in the description field
    And I enter "31/12/2022" in the start date field
    And I enter "11:59pm" in the start time field
    And I enter "01/01/2023" in the end date field
    And I enter "12:01am" in the end time field
    And I enter "Alma Mater" in the location field
    And I enter "100" in the seats field
    But I click the confirm button
    Then I should be on an event page
    And the event organizer should be "jar2333"
    And the event title should be "Movie Screening"
    And there exists an event with title "Movie Screening"




