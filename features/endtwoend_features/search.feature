Feature: Search something
  As a user of wiki
  I want to search something
  so I can see results of something

  @web
  Scenario: User search something
    Given An user is on search Page
    When User search "something"
    Then Search Page shows results with "something"