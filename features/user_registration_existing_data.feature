Feature: New user registration with existing email and login
  As a new one on the site
  I should not be able to complate registration with existing email and login

Scenario: Registration with existing email and login
  Given I am not registered user

  When I click register button
  Then I see the register form is opened

  When I fill in all required fields
  And I click button submit
  Then I see error messages