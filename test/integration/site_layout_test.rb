require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest 
	
	test "layout links" do
		get root_path
		assert_template 'static_pages/home'
		assert_select "a[href=?]", root_path, count: 2 #there are 2 rooth_paths in header. 
		assert_select "a[href=?]", help_path
		assert_select "a[href=?]", about_path #Rails looks for <a> and inserts "about_path" in [href=?], like this: <a href="/about">...</a>
		assert_select "a[href=?]", contact_path
  end
end
