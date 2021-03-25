And(/^I see Lost password link$/) do
  find(:xpath, '//*[@id="login-form"]/form/label[2]/a').click
end

When(/^I fill in email field$/) do
  find('#mail').set 'tko@gma.com'
end

Then(/^I click submit button$/) do
  find(:xpath, '//*[@id="content"]/form/div/p/input[2]').click
end

Then(/^I receive an error message$/) do
  expect(page).to have_content 'Unknown user.'

  sleep 5
end