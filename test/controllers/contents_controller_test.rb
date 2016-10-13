require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get data:string" do
    get :data:string
    assert_response :success
  end

  test "should get owner:string" do
    get :owner:string
    assert_response :success
  end

end
