Feature: Buy Guest CollectFrom UK

  Scenario:Visa
    Given I login
    And I am on a UK performance page
    When I check out CollectFrom Ticket
    Then I can pay by saved Visa

  Feature: Buy Guest CollectFrom UK

  Scenario:Amex
    Given I login
    And I am on a UK performance page
    When I check out CollectFrom Ticket
    Then I can pay by saved Amex

  Scenario:Maestro
    Given I login
    And I am on a UK performance page
    When I check out CollectFrom Ticket
    Then I can pay by saved Maestro