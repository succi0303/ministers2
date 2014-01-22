Feature: layout
  As a web surfer
  I want consist the page to have consist layout
  so that I can read the page more easiliy

  Scenario: title
    When I am in 'top page'
    Then I should see the page title "日本の総理大臣"

  Scenario: header
    When I am in 'top page'
    Then I should see the page header
    And I should see brand name in header
    And I should see some links in header

  Scenario: footer
    When I am in 'top page'
    Then I should see the page footer
    And I should see copyright in footer
