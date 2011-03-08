Feature: Landing Page
         All users should be able to memorize text on the landing page without authentication and authorization

  Scenario: load the home page
    Given I am on the home page 
    Then I should see "Search for Text to Memorize" 
    And I should see "Go"

  Scenario: search for text to memorize
  	Given I am on the home page
  	When I fill in "Search for Text to Memorize" with "James"
  	And I press ajax "Go"
  	Then I should see "Search for Text to Memorize"
