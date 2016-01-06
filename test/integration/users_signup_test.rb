require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	test "invalid signup information" do 
		get signup_path
		assert_no_difference "User.count" do 
		  post users_path, user: {name: "",
		  												email: "user@invalid",
		  												password: "foo",
		  												password_confirmation: "bar"}
		end
		assert_template "users/new"
	end

	test "valid signup information" do 
		get signup_path
		assert_difference 'User.count', 1 do 
		  post_via_redirect users_path, user: {name: "Example Name",
		  																		 email: "Michael@example.org",
		  																		 password: "foobar",
		  																		 password_confirmation: "foobar"}
		end
		assert_template "users/show"
	end

end

#invalid test test checks to see if the User Count has changed
#when there is an invalid submission, i.e.: did system
#accept invalid submission. 
#This is the same as:
#before_count = User.count
#post users_path, ...
#after_count  = User.count
#assert_equal before_count, after_count
