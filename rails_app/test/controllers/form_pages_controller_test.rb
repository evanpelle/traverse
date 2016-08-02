require 'test_helper'

class FormPagesControllerTest < ActionController::TestCase
  test "should get traverse" do
    get :traverse
    assert_response :success
  end

end
