require 'test_helper'

class CoursetypesControllerTest < ActionController::TestCase
  setup do
    @coursetype = coursetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coursetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursetype" do
    assert_difference('Coursetype.count') do
      post :create, coursetype: { description: @coursetype.description, icon: @coursetype.icon, intensity: @coursetype.intensity, name: @coursetype.name }
    end

    assert_redirected_to coursetype_path(assigns(:coursetype))
  end

  test "should show coursetype" do
    get :show, id: @coursetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursetype
    assert_response :success
  end

  test "should update coursetype" do
    patch :update, id: @coursetype, coursetype: { description: @coursetype.description, icon: @coursetype.icon, intensity: @coursetype.intensity, name: @coursetype.name }
    assert_redirected_to coursetype_path(assigns(:coursetype))
  end

  test "should destroy coursetype" do
    assert_difference('Coursetype.count', -1) do
      delete :destroy, id: @coursetype
    end

    assert_redirected_to coursetypes_path
  end
end
