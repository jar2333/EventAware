@wip
Feature: Edit the details of an event the user has created

    I am a user of EventAware who creates events
    Yet sometimes the details are incorrect or I want to reschedule
    So I will edit the event information

@wip
Background: I am a user and have created some events

    Given I am logged in as "jar2333"
    And I am on an event page
    
@wip
Scenario: I edit the title of an event I created

    Given the event creator is "jar2333"
    And the event title is "Halloween Party"
    But I press the edit button
    Then I should be on an edit page
    And I enter "Costume Party" in the title field
    And I click the confirm button
    Then I should be on an event page
    And the event title should be "Costume Party"

@wip
Scenario: I cannot edit an event I did not create

    Given the event creator is "sa4084"
    Then I should not see "edit"
