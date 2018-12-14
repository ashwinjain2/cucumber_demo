Given (/^I am on xfinity website$/) do
	$Browser.login.load
	page.driver.browser.get("http://customer.xfinity.com")
end

And (/^I click the sign in checkbox$/) do
binding.pry
$Browser.xfn.remember_me_checkbox.click
$Browser.xfn.user_id.set("user_name_input")
binding.pry
sleep 4
end