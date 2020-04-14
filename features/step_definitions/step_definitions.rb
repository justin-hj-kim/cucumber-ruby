# encoding: UTF-8

require_relative 'actionwords'
World(Actionwords)

Given /^that the user has navigated over to the smartstore$/ do
  that_the_user_has_navigated_over_to_the_smartstore
end

When /^the user clicks login$/ do
  the_user_clicks_login
end

When /^the user provides proper credentials$/ do
  the_user_provides_proper_credentials
end

Then /^the user should be able to log in$/ do
  the_user_should_be_able_to_log_in
end

When /^the user provides invalid credentials$/ do
  the_user_provides_invalid_credentials
end

Then /^the website should reject their login$/ do
  the_website_should_reject_their_login
end

Given /^the user types something into the search bar$/ do
  the_user_types_something_into_the_search_bar
end

When /^the user selects that item$/ do
  the_user_selects_that_item
end

When /^adds it to the card$/ do
  adds_it_to_the_card
end

Then /^the user can checkout the item$/ do
  the_user_can_checkout_the_item
end

=begin
Given /^the user clicks on contact us button$/ do
  the_user_clicks_on_contact_us_button
end

When /^the user fills out the name, email, and inquiry fields$/ do
  the_user_fills_out_the_name_email_and_inquiry_fields
end

When /^presses submit$/ do
  presses_submit
end

Then /^the store should display a successful inquiry message\.$/ do
  the_store_should_display_a_successful_inquiry_message
end
=end
