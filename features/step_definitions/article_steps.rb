Given(/^I have articles titled (.+)$/) do |titles|
  titles.split(", ").each do |title|
    FactoryGirl.create(:article, title: title)
  end
end

When(/^I (?:go to|am on) the list of articles$/) do
  visit '/articles'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end
