Feature: User requests the weather
  As a registered user
  I request information about the weather
  so I can know the weather of a city

  Scenario: Registered user requests the weather of the city
    Given An user requests to know the weather
    When the user requests information of the city with id "3936456"
    Then the system returns the weather of request city
    And the system shows following city's information:
      | name    | Lima    |
      | id      | 3936456 |
      | country | PE      |

  Scenario: Registered user not is registered requests the weather of the city
    Given An user requests to know the weather
    When the user requests information of the city with id "3936456"
    Then the response of the system should be 500
