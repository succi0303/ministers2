Feature: list of ministers
  As a web surfer
  I want to get the list
  so that I can get info of ministers at a glance

  Scenario: list page
    Given I am in 'top page'
    When I move to 'list page'
    Then I should see the contents "歴代内閣総理大臣の一覧"
    And I should see the page title "総理大臣一覧"

  Scenario: ministers list
    When I am in 'list page'
    Then I should see the list of ministers
    And I should see the contents "歴代"
    And I should see the contents "氏名"
    And I should see the contents "在職期間"
    And I should see the contents "在職日数"
    And I should see the contents "就任時年齢"


