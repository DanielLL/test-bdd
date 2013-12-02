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

Given(/^I have no articles$/) do
  Article.all.count.should == 0
end

When(/^I click on "(.*?)"$/) do |arg1|
  click_on arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2 
end

When(/^I press "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I should have (\d+) article$/) do |arg1|
  Article.all.count.should == arg1.to_i
end

