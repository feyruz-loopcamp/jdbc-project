#@test03
Feature: As a data consumer, I want UI account holder name to be in DB.
  @ui @db
  Scenario: verify UI account holder name exist in DB
    Given the "advisor" on the home page
    When the advisor gets account holder name
    Then verify ui account name is in db