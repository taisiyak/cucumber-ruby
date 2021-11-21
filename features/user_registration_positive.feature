Feature: New user registration
  As a new one on the site
  I want to be able to complate registration
  So I can to become a user and log in to my personal account

Scenario: Registration positive flow
  Given I am not registered user

  When I click register button
  Then I see the register form is opened

  When I fill in all required fields on the screen
  And I click button submit
  Then I become a registered user