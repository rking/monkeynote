require './test/test_helper'

class LeavesControllerTest < ActionController::TestCase
  setup do
    @leaf = leaves(:fred)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaf" do
    assert_difference('Leaf.count') do
      post :create, leaf: { label: @leaf.label, url: @leaf.url }
    end

    assert_redirected_to leaf_path(assigns(:obj))
  end

  test "should show leaf" do
    get :show, id: @leaf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaf
    assert_response :success
  end

  test "should update leaf" do
    put :update, id: @leaf, leaf: { label: @leaf.label, url: @leaf.url }
    assert_redirected_to leaf_path(assigns(:obj))
  end

  test "should destroy leaf" do
    assert_difference('Leaf.count', -1) do
      delete :destroy, id: @leaf
    end

    assert_redirected_to leaves_path
  end
end
