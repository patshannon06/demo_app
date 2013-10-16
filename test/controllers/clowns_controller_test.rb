require 'test_helper'

class ClownsControllerTest < ActionController::TestCase
  setup do
    @clown = clowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clown" do
    assert_difference('Clown.count') do
      post :create, clown: { age: @clown.age, color: @clown.color, name: @clown.name }
    end

    assert_redirected_to clown_path(assigns(:clown))
  end

  test "should show clown" do
    get :show, id: @clown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clown
    assert_response :success
  end

  test "should update clown" do
    patch :update, id: @clown, clown: { age: @clown.age, color: @clown.color, name: @clown.name }
    assert_redirected_to clown_path(assigns(:clown))
  end

  test "should destroy clown" do
    assert_difference('Clown.count', -1) do
      delete :destroy, id: @clown
    end

    assert_redirected_to clowns_path
  end
end
