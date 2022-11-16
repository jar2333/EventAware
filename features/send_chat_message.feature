Feature: Send messages in an event chat

    I am a user of EventAware
    who wants to organize events and socialize
    So I will read and send messages in a chat

Background: I am a user of EventAware

    Given I log in as jar2333
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"
    And I click the event chat button
    Then I should be at a chat page

Scenario: I send a simple text message to the chat

    Given I write "hello!" on the chat text box
    And I click the send button
    Then I should see a message by user "jar2333" that says "hello!"