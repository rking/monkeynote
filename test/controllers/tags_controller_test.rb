require './test/test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @obj = tags :math
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

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { label: @obj.label }
    end

    assert_redirected_to tag_path(assigns(:obj))
  end

  test "should show tag" do
    get :show, id: @obj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obj
    assert_response :success
  end

  test "should update tag" do
    label2x = @obj.label * 2
    put :update, id: @obj, tag: { label: label2x }
    assert_redirected_to tag_path(assigns(:obj))
    assert_equal label2x, assigns(:obj).label
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @obj
    end

    assert_redirected_to tags_path
  end
end
