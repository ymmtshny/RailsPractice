require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get new" do
    get signup_url
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end

end
