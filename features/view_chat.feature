Feature: View a group chat specific to an event

    I am a user who wants to join an event
    So I participate in the even group chat
    So I can organize and share with others

Background: I am viewing the details of an event

    Given I log in as jar2333
    And I am in my home page
    And there does exist an event with organizer "jar2333", title "Halloween Party", description "hi", start date "12/31/2022", start time "11:59pm", end date "01/01/2023", end time "12:01am"
    And I am at an event info page

Scenario: I want to view the chat for the event

    Given I click the event chat button
    Then I should be at a chat page