require 'test_helper'

class PayPerViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pay_per_view = pay_per_views(:one)
  end

  test "should get index" do
    get pay_per_views_url
    assert_response :success
  end

  test "should get new" do
    get new_pay_per_view_url
    assert_response :success
  end

  test "should create pay_per_view" do
    assert_difference('PayPerView.count') do
      post pay_per_views_url, params: { pay_per_view: {  } }
    end

    assert_redirected_to pay_per_view_url(PayPerView.last)
  end

  test "should show pay_per_view" do
    get pay_per_view_url(@pay_per_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_pay_per_view_url(@pay_per_view)
    assert_response :success
  end

  test "should update pay_per_view" do
    patch pay_per_view_url(@pay_per_view), params: { pay_per_view: {  } }
    assert_redirected_to pay_per_view_url(@pay_per_view)
  end

  test "should destroy pay_per_view" do
    assert_difference('PayPerView.count', -1) do
      delete pay_per_view_url(@pay_per_view)
    end

    assert_redirected_to pay_per_views_url
  end
end
