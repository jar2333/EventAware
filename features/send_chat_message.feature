Feature: Send messages in an event chat

    I am a user of EventAware
    who wants to organize events and socialize
    So I will read and send messages in a chat

Background: I am a user of EventAware

    Given I am logged in as "jar2333"
    And I am on a chat page

Scenario: I send a simple text message to the chat

    Given I write "hello!" on the chat text box
    And I click the send button
    Then I should see a message by user "jar2333" that says "hello!"