require 'test_helper'

class AdministracionControllerTest < ActionController::TestCase
  test "should get MyAdmin" do
    get :MyAdmin
    assert_response :success
  end

end
