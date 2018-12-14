require 'selenium-webdriver'
require 'pry'
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../../testsite")
require 'testsite'

	
#driver = Selenium::WebDriver.for :chrome
#$Browser = Testsite.new
# driver.navigate.to "https://customer.xfinity.com"
# sleep 10
# driver.find_element(:id,"user").send_keys("username")
# sleep 10
# driver.quit 

Given (/^I am on paypal website$/) do
	$Browser.login.load
end

And (/^I should click the Log in button$/) do
$Browser.login.login_button_id.click
sleep 4
end


And(/^I enter (.*?) and (.*?)$/) do |user1,pass1|
$Browser.login.user_id.set(user1)
$Browser.login.login_next.click
$Browser.login.password_id.set(pass1)
end

	And(/^I click Login button$/) do
 	$Browser.login.login_after_password_button.click
	sleep 4
end


And (/^I should close the browser$/) do
	binding.pry
	$Browser.summary.logout_button.click
	end

	And(/^I should see the "(.*?)" button$/)do |button_text|
	expect($Browser.login.login_button_id.text).to eql(button_text)
	exp_link = "https://www.paypal.com/us/signin"
	binding.pry
	expect($Browser.login.login_button_id["href"]).to eql(exp_link)
	expect($Browser.login.login_button_id.text).to match("Log")
	# binding.pry
	# x = page.driver.browser.find("#main section").css('color')
	# puts x

end

And(/^I should click "(.*?)" link$/) do |button|
	$Browser.login.login_not_now_link.click
	sleep 4
end

And(/^I should select offer from dropdown$/) do
	$Browser.summary.offers_link.click
	$Browser.summary.offers_dropdown.select('xyz')

	end

	And(/^I click the Sign Up button$/) do 
		
		$Browser.login.signup_button.click
	end
	And(/^I select the Business account radio button$/) do 
		# $Browser.login.business_account_radio_button.click
		x = $Browser.login.business_account_label.native
		page.driver.browser.action.move_to(x,1,1).click.perform
	end

	And(/^I validate the background image$/) do
		binding.pry
		$Browser.login.bakcgroundimage.style('background')
	end

