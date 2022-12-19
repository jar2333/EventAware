Feature: Follow favorite users to see their events separately

    I am a user who prefers particular events
    Other users tend to post events involving similar topics or friend groups
    So I will follow those users to track those events

Background: I am a user of EventAware who does not follow a profile

    Given I log in as jar2333
    And I am in my home page
    And there is a user "sa4084" with password "password"
    
Scenario: I follow the profile

    Given I am in the profile "sa4084"
    And I do not follow "sa4084"
    Given I click the follow button
    Then I should be in the profile "sa4084"
    And I do follow "sa4084"

Scenario: Check that the follower list is updated

    Given I now follow "sa4084"
    Then I should be in the profile "sa4084"
    Then I view followers list
    Then I should see "jar2333"


Scenario: Check that the following list is updated

    Given I now follow "sa4084"
    Then I am in the profile "jar2333"
    Then I view following list
    Then I should see "sa4084"

