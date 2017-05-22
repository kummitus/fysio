
Given(/^User goes to users page$/) do
  visit "/users"
end

Then(/^Page contains "([^"]*)"$/) do |line|
  expect(page).to have_content line
end