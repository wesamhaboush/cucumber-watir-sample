Given /^I click to the Google Home Page$/ do
  visit_page HomePage
end

When /^I click the Search Button$/ do
  @current_page.search
end

When /^I enter love$/ do
  @current_page.populate_page_with :search_term => "love"
  @browser.send_keys :escape
end

Then /^I should see love wikipedia in search results$/ do
  @current_page.populate_page_with :search_term => "love"
end
