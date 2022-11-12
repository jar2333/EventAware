Feature: View the home page of the authenticated user

    As a person using EventAware
    I want to discover happening close to me in time and place
    So I access the home page

Background: I am a user of EventAware

    Given I am logged in as "jar2333"

Scenario: I am viewing a profile and want to switch to the home timeline

    Given I am in a profile page
    And I click the home tab
    Then I am in my home page

