require 'test_helper'

class YesCutesControllerTest < ActionController::TestCase
  setup do
    @yes_cute = yes_cutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yes_cutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yes_cute" do
    assert_difference('YesCute.count') do
      post :create, yes_cute: { Animal: @yes_cute.Animal, cuteness_level: @yes_cute.cuteness_level, image_url: @yes_cute.image_url }
    end

    assert_redirected_to yes_cute_path(assigns(:yes_cute))
  end

  test "should show yes_cute" do
    get :show, id: @yes_cute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yes_cute
    assert_response :success
  end

  test "should update yes_cute" do
    patch :update, id: @yes_cute, yes_cute: { Animal: @yes_cute.Animal, cuteness_level: @yes_cute.cuteness_level, image_url: @yes_cute.image_url }
    assert_redirected_to yes_cute_path(assigns(:yes_cute))
  end

  test "should destroy yes_cute" do
    assert_difference('YesCute.count', -1) do
      delete :destroy, id: @yes_cute
    end

    assert_redirected_to yes_cutes_path
  end
end
