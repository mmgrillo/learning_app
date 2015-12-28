require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest 
	
	test "layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]", root_path, count: 2 #there are 2 root_paths in header. 
		assert_select "a[href=?]", help_path
		assert_select "a[href=?]", about_path #Rails looks for <a> and inserts "about_path" in [href=?], like this: <a href="/about">...</a>
		assert_select "a[href=?]", contact_path
		assert_select "a[href=?]", signup_path

		get signup_path
		assert_select "title", full_title("Sign up")
  end
end
