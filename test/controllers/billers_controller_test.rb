require 'test_helper'

class BillersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get billers_new_url
    assert_response :success
  end

  test "should get create" do
    get billers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get billers_destroy_url
    assert_response :success
  end

end
