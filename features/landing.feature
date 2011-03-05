Feature: Landing Page
         All users should be able to memorize text on the landing page without authentication and authorization

  Scenario: load the home page
    Given I am on the home page 
    Then I should see "Sticky Memory" 
