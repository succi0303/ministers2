Feature: Static Pages
  As a web serfer
  I want to know about the site
  so that I can judge the reliability of information

  Scenario: top page
    When I am in 'top page'
    Then I should see the title "日本の総理大臣"

  Scenario: about page
    When I am in 'top page'
    And I move to 'about page'
    Then I should see the contents "このサイトについて"
    And I should see the page title "About"

  Scenario: contact page
    When I am in 'top page'
    And I move to 'contact page'
    Then I should see the contents "お問い合わせ"
    And I should see the page title "Contact"
