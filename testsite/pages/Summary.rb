require "site_prism"

class Summary < SitePrism::Page

	set_url ""
	#set_url_matcher /paypal(*.?)\.com/
	element :logout_button, "#header-logout"

	element :offers_link, "#header-offers"
	element :offers_dropdown, "#filterCategory"

end