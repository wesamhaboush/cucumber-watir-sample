Feature: Google Search
  We want to ensure tha the google homepage works.

  @current
  Scenario: Click on search button
    Given I click to the Google Home Page
    When I enter love
    When I click the Search Button
    Then I should see love wikipedia in search results
