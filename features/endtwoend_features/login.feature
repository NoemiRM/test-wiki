@web
Feature: Login as user
  As a user with authorization
  I want to access to application
  so I can see my personal information

  Scenario: User access to web application
    Given An user is in the web site
    When the user enter credentials to sign in with the following credentials:
      | user | pilar07   |
      | pass | pilar1985 |
    Then the user should have see "Pilar07" as name user

