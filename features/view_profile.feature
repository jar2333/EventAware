Feature: View the profile of an existing user

    As a person seeking to find events to attend
    So I can join events with friends
    I want to see events my friend is attending or organizing

Background: Both me and a friend are users on the platform

    Given I am logged in as "jar2333"
    And I follow "sa4084"
    And "sa4084" follows me

Scenario: Go to my profile from the home page

    Given I am in my home page
    And I click the profile tab
    Then I should be in the profile for user "jar2333"

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