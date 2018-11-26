require 'test_helper'

class RewiewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rewiews_new_url
    assert_response :success
  end

  test "should get create" do
    get rewiews_create_url
    assert_response :success
  end

end
