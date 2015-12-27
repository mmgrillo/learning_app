require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "The Reference and Learning App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "The Reference and Learning App"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "The Reference and Learning App"
  end

end

#"assert_response :success" the get request gets a 200:OK

#"assert_select "title", "About | The Reference and Learning App"" 
#looks for a <title> in the HTML with the content of "About"

