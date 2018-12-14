require "site_prism"

class Login_page < SitePrism::Page

	set_url ""
	#set_url_matcher /paypal(*.?)\.com/
	element :bakcgroundimage, "#main section"
	element :user_id, "#email"
	element :login_next, "#btnNext"
	element :password_id, "#password"
	element :login_button_id, "#ul-btn"

	element :login_after_password_button, "#btnLogin"
	element :login_not_now_link , "a.notNowClientCal"

	element :signup_button, "#signup-button"
	element :business_account_label, "label[for='radio-business']"
	element :business_account_radio_button, "#radio-business"

end
