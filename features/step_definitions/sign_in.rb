Given(/^I am not logged in visitor$/) do
  @home_screen = HomeScreen.new
  @home_screen.load
end

When(/^I click Sign in button$/) do
  @home_screen.top_menu.sign_in_link.click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
  expect(page).to have_content 'Lost password'
end

When(/^I fill in log in for with valid credentials$/) do
  @login_screen = LoginScreen.new

  @login_screen.user_name_field.set 'tratata'
  @login_screen.password_field.set 'test123456'
end

And(/^I click log in button$/) do
  @login_screen.submit_btn.click
end

Then(/^I become a logged in user$/) do
  expect(page).to have_content 'Logged in as tratata'

  sleep 3
end

Given(/^I am logged in as "([^"]*)"$/) do |user_name|
  login user_name, 'test123456'
end

Then(/^I become a logged in as "([^"]*)"$/) do |user_name|
  expect(page).to have_content "Logged in as #{user_name}"

  sleep 3
end