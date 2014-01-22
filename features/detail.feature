Feature: detail of minister
  As a web surfer
  I want to detail info of minister
  so that I can a well-informed person

  Scenario: detail page
    Given I am in 'list page'
    When I move to 'detail page' of "伊藤博文"
    Then I should see the contents "伊藤博文"
    And I should see the page title "伊藤博文"
