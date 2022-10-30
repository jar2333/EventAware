Feature: View timeline of events in home page

    As a user seeking to participate in events
    I want to quickly see events happening close to me in time and place

Background: A friend is a user on the platform

    Given I am logged in as "jar2333"
    And I follow "sa4084"
    And "sa4084" follows me

Scenario: Go to profile of event organizer

    Given I am on an event page created by "sa4084"
    Then I should see "organizer"
    When I press the event creator name
    Then I should be in the profile for user "sa4084"

Scenario: Go to profile of someone I follow

    And I am in my profile
    But I view my following list
    Then I should see "sa4084"
    And I press the name of the user "sa4084" I follow
    Then I should be in the profile for user "sa4084"

Scenario: Go to profile of someone who follows me

    And I am in my profile
    But I view my followers list
    Then I should see "sa4084"
    And I press the name of the user "sa4084" who follows me
    Then I should be in the profile for user "sa4084"
