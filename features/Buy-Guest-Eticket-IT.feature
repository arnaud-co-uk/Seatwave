Feature: Buy Guest Eticket IT

  Scenario: Visa
    Given I am on a IT performance page
    When I check out Etickets
    And fill my IT details
    Then I can pay by Visa

  Scenario: Mastercard
    Given I am on a IT performance page
    When I check out Etickets
    And fill my IT details
    Then I can pay by Mastercard
