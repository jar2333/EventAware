
Feature: View timeline of events in home page

    As a user seeking to participate in events
    I want to filter events happening close to me in time and place
    So I use the search feature in the home timeline

Background: I am a registered user in the home page

    Given I log in as jar2333
    And I am in my home page
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"
    And there does exist an event with organizer "jar2333", title "Birthday Party", description "hello", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"
    And there does exist an event with organizer "jar2333", title "New Years Party", description "hello", start date "10/31/2022", start time "11:59pm", end date "11/01/2022", end time "12:01am"

Scenario: All upcoming events show up

    Then I should see an event with title "Halloween Party"
    And I should see an event with title "Birthday Party"

@wip
Scenario: Events that already occurred do not show up

    But the event with title "New Years Party" has ocurred
    Then I should see an event with title "Halloween Party"
    And I should not see "New Years Party"

Scenario: Search for upcoming events by title substring

    Given I search for "Hall"
    Then I should see an event with title "Halloween Party"
    And I should not see "Birthday Party"

@wip
Scenario: The events are ordered chronologically