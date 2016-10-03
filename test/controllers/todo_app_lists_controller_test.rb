require 'test_helper'

class TodoAppListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_app_list = todo_app_lists(:one)
  end

  test "should get index" do
    get todo_app_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_app_list_url
    assert_response :success
  end

  test "should create todo_app_list" do
    assert_difference('TodoAppList.count') do
      post todo_app_lists_url, params: { todo_app_list: { title: @todo_app_list.title } }
    end

    assert_redirected_to todo_app_list_url(TodoAppList.last)
  end

  test "should show todo_app_list" do
    get todo_app_list_url(@todo_app_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_app_list_url(@todo_app_list)
    assert_response :success
  end

  test "should update todo_app_list" do
    patch todo_app_list_url(@todo_app_list), params: { todo_app_list: { title: @todo_app_list.title } }
    assert_redirected_to todo_app_list_url(@todo_app_list)
  end

  test "should destroy todo_app_list" do
    assert_difference('TodoAppList.count', -1) do
      delete todo_app_list_url(@todo_app_list)
    end

    assert_redirected_to todo_app_lists_url
  end
end
