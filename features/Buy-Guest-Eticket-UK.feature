Feature: Buy Guest Eticket UK

  Scenario:Visa
    Given I am on a UK performance page
    When I check out Etickets
    And fill my UK details
    And fill my UK billing details
    Then I can pay by Visa

  Scenario:Mastercard
    Given I am on a UK performance page
    When I check out Etickets
    And fill my UK details
    And fill my UK billing details
    Then I can pay by Mastercard

  Scenario:Amex
    Given I am on a UK performance page
    When I check out Etickets
    And fill my UK details
    And fill my UK billing details
    Then I can pay by Amex

  Scenario:Maestro
    Given I am on a UK performance page
    When I check out Etickets
    And fill my UK details
    And fill my UK billing details
    Then I can pay by Maestro