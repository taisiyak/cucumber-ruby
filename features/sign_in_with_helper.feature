Feature: Sign in with helper
  As a visitor
  I want to be able to sign in
  In order to become a user

  Scenario: Sign in positive flow
    Given I am logged in as "memus"
    Then I become a logged in as "memus"
