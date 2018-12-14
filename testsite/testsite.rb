$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/pages")
require 'Login_page'
require 'Summary'
require 'xfinity_login'

class TestSuite
	def login
		Login_page.new
	end

	def summary
		Summary.new
	end
	def xfn
		Xfinity_login.new
	end
end

