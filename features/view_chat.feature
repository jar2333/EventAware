@wip
Feature: View a group chat specific to an event

    I am a user who wants to join an event
    So I participate in the even group chat
    So I can organize and share with others

Background: I am viewing the details of an event

    Given that I am logged in as "jar2333"
    And I am on an event page

Scenario: I want to view the chat for the event

    Given I click the event chat button
    Then I should be in a chat page