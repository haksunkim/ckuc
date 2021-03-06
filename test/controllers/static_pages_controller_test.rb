require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get introduction" do
    get :introduction
    assert_response :success
  end

  test "should get service_info" do
    get :service_info
    assert_response :success
  end

  test "should get groups" do
    get :groups
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

end
