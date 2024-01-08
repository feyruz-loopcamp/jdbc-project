@test03
Feature: As a data consumer, I want UI usr account to be in DB.
  @ui@db
  Scenario: verify UI user total account count matches in DB
    Given the "advisor" on the home page
    And the user navigates to "Users" page
    When the user gets total user count
    Then verify user count information match in DB