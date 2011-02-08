require 'test_helper'

class LegislatorsControllerTest < ActionController::TestCase
  test "should get all_for" do
    get :all_for
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
