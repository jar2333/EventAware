Feature: View timeline of events in home page

    As a user seeking to participate in events
    I want to quickly see events happening close to me in time and place

Background: I am a registered user in the home page

    Given I am logged in as "jar2333"
    And I am in my home page
    And there exist created events

Scenario: All upcoming events show up

    Given there exists an upcoming event with title "Halloween Party"
    And there exists an upcoming event with title "Birthday Party"
    Then I should see an event with title "Halloween Party"
    And I should see an event with title "Birthday Party"

Scenario: Events that already occurred do not show up

    Given there exists an upcoming event with title "Halloween Party"
    And there exists an event with title "New Years Party"
    But the event with title "New Years Party" has passed
    Then I should see an event with title "Halloween Party"
    And I should not see "New Years Party"

Scenario: Search for upcoming events by title substring

    Given there exists an upcoming event with title "Halloween Party"
    And there exists an upcoming event with title "Birthday Party"
    But I search for "Hall"
    Then I should see an event with title "Halloween Party"
    And I should not see "Birthday Party"
