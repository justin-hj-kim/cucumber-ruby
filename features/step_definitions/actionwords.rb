# encoding: UTF-8

require "selenium-webdriver"
require "rubygems"
require "bundler"
require "cucumber"

module Actionwords

  def that_the_user_has_navigated_over_to_the_smartstore
    $driver = Selenium::WebDriver.for :firefox
    $driver.navigate.to("http://services.smartbear.com/samples/TestComplete12/smartstore")
    $driver.manage.window.maximize
  end

  def the_user_clicks_login
    $driver.find_element(:xpath, "//*[@id=\"menubar-my-account\"]/div/a/span").click
  end

  def the_user_provides_proper_credentials
    $driver.find_element(:xpath, "//*[@id=\"Username\"]").send_keys("hkim5")
    $driver.find_element(:xpath, "//*[@id=\"Password\"]").send_keys("Smartbear1408!")
    $driver.find_element(:xpath, "//*[@id=\"content-center\"]/div/div[2]/div[1]/div/form/div[4]/button").click
  end

  def the_user_should_be_able_to_log_in
    username =  $driver.find_element(:xpath,"//*[@id=\"menubar-my-account\"]/div/a/span").text
    expect(username) .to eq("HKIM5"), "Expected the balance to be hkim5, but was #{username}"
    #assert($driver.find_element(:xpath,"//*[@id=\"menubar-my-account\"]/div/a/span").text.include?("hkim5"), "Page contains the username")
  end

  def the_user_provides_invalid_credentials
    $driver.find_element(:xpath, "//*[@id=\"Username\"]").send_keys("hkim12345")
    $driver.find_element(:xpath, "//*[@id=\"Password\"]").send_keys("Smartbear1408!")
    $driver.find_element(:xpath, "//*[@id=\"content-center\"]/div/div[2]/div[1]/div/form/div[4]/button").click
  end

  def the_website_should_reject_their_login
    notloggedin = $driver.find_element(:xpath, "//*[@id=\"content-center\"]/div/div[2]/div[1]/div/div/span").text
    expect(notloggedin) .to include("unsuccessful"), "Expected the message: Login was unsuccessful, but it displayed #{notloggedin}"
    #assert($driver.find_element(:xpath, "//*[@id=\"content-center\"]/div/div[2]/div[1]/div/div/span").text.include?("Login was unsuccessful. Please correct and try again"), "Login Rejected")
  end

  def the_user_types_something_into_the_search_bar
    $driver.find_element(:xpath, "//*[@id=\"instasearch\"]").send_keys("chronograph")
    $driver.find_element(:xpath, "//*[@id=\"header\"]/div[2]/div/div/div[1]/div[2]/form/button").click
  end

  def the_user_selects_that_item
    $driver.find_element(:class, "art-picture-block").click
  end

  def adds_it_to_the_card
    $driver.find_element(:xpath, "//*[@id=\"pd-form\"]/section/aside/div[4]/div[3]/div/div[2]/a/span").click
  end

  def the_user_can_checkout_the_item
    $driver.find_element(:css, "#pd-form > section > aside > div.pd-offer > div.pd-offer-actions-container > div > div.col.flex-grow-1 > a > span").click
    $driver.quit
  end

  #fill out the rest when possible.

  def the_user_clicks_on_contact_us_button

  end

  def the_user_fills_out_the_name_email_and_inquiry_fields

  end

  def presses_submit

  end

  def the_store_should_display_a_successful_inquiry_message

  end
end


#hiptest-publisher -c hiptest-publisher.conf --token=207233293921290597634285569888014368421957412936171795605 --only=features,step_definitions --test-run-id=389046
#cucumber --format json -o results.json
#hiptest-publisher -c hiptest-publisher.conf --token=207233293921290597634285569888014368421957412936171795605  --push-format="cucumber-json" --push="results.json" --test-run-id=389046

#go to https://reports.cucumber.io/
#cucumber --format message --out https://b1f2yk58d8.execute-api.eu-west-3.amazonaws.com/api/repository/5985db57-cb09-480d-8417-c797706ff8e4