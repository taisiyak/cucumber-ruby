Given(/^I am not logged in visitor$/) do
  visit 'http://192.168.88.224'
end

When(/^I click Sign in button$/) do
  find(:xpath, '//*[@id="account"]/ul/li[1]/a').click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
  expect(page).to have_content 'Lost password'
end

When(/^I fill in log in for with valid credentials$/) do
  find('#username').set 'tratata'
  find('#password').set 'test123456'
end

And(/^I click log in button$/) do
  find('#login-submit').click
end

Then(/^I become a logged in user$/) do
  expect(page).to have_content 'Logged in as tratata'

  sleep 3
end