require "site_prism"

class Xfinity_login < SitePrism::Page

	set_url ""
	#set_url_matcher /paypal(*.?)\.com/
	element :remember_me_checkbox,"#remember_me_checkbox"
	element :user_id, "#user"

end