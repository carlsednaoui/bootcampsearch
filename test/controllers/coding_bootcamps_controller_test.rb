require 'test_helper'

class CodingBootcampsControllerTest < ActionController::TestCase
  setup do
    @coding_bootcamp = coding_bootcamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coding_bootcamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coding_bootcamp" do
    assert_difference('CodingBootcamp.count') do
      post :create, coding_bootcamp: { name: @coding_bootcamp.name }
    end

    assert_redirected_to coding_bootcamp_path(assigns(:coding_bootcamp))
  end

  test "should show coding_bootcamp" do
    get :show, id: @coding_bootcamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coding_bootcamp
    assert_response :success
  end

  test "should update coding_bootcamp" do
    patch :update, id: @coding_bootcamp, coding_bootcamp: { name: @coding_bootcamp.name }
    assert_redirected_to coding_bootcamp_path(assigns(:coding_bootcamp))
  end

  test "should destroy coding_bootcamp" do
    assert_difference('CodingBootcamp.count', -1) do
      delete :destroy, id: @coding_bootcamp
    end

    assert_redirected_to coding_bootcamps_path
  end
end
