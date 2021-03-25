Feature: Lost password
  As a visitor
  I want to be able to recover my password
  In order to be able to log in if I forgot password

  Scenario: Lost password positive flow
    Given I am not logged in visitor

    When I click Sign in button
    Then I see the log in form is opened
    And  I see Lost password link

    When I fill in email field
    And I click submit button
    Then I receive an error message
