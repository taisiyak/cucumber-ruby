Given(/^I am not registered user$/) do
  @home_screen = HomeScreen.new
  @home_screen.load
end

When(/^I click register button$/) do
  @home_screen.top_menu.register_link.click
end

Then(/^I see the register form is opened$/) do
  expect(current_url).to include '/account/register'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
  expect(page).to have_content 'First name'
end

When(/^I fill in all required fields$/) do
  @register_screen = RegisterScreen.new

  @register_screen.user_login.set 'memus'
  @register_screen.user_password.set 'test123456'
  @register_screen.user_password_confirmation.set 'test123456'
  @register_screen.user_firstname.set 'Kit'
  @register_screen.user_lastname.set 'Kat'
  @register_screen.user_mail.set 'memus@mem.me'
end

And(/^I click button submit$/) do
  @register_screen.submit_btn_register.click
end

Then(/^I see error messages$/) do
  expect(page).to have_content 'Email has already been taken'
  expect(page).to have_content 'Login has already been taken'

  sleep 5
end

When(/^I fill in all required fields on the screen$/) do
  register_hex
end

Then(/^I become a registered user$/) do
  expect(page).to have_content 'Your account has been activated. You can now log in.'
  # expect(page).to have_content "Logged in as "

  sleep 5
end