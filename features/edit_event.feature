
Feature: Edit the details of an event the user has created

    I am a user of EventAware who creates events
    Yet sometimes the details are incorrect or I want to reschedule
    So I will edit the event information

Background: I am a user and have created some events

    Given I log in as jar2333
    And I am in my home page
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"

Scenario: I edit the title of an event I created

    Given the event creator is "jar2333"
    And the event title is "Halloween Party"
    But I click the edit button
    Then I should be at an edit event page
    And I enter "Costume Party" in the title field
    And I click the confirm edit button
    Then I should be at an event info page
    And the event title should be "Costume Party"

@wip
Scenario: I cannot edit an event I did not create

    Given the event creator is "sa4084"
    Then I should not see "edit"
