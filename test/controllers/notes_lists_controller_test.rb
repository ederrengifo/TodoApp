require 'test_helper'

class NotesListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notes_list = notes_lists(:one)
  end

  test "should get index" do
    get notes_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_notes_list_url
    assert_response :success
  end

  test "should create notes_list" do
    assert_difference('NotesList.count') do
      post notes_lists_url, params: { notes_list: { code: @notes_list.code, codeTitle: @notes_list.codeTitle } }
    end

    assert_redirected_to notes_list_url(NotesList.last)
  end

  test "should show notes_list" do
    get notes_list_url(@notes_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_notes_list_url(@notes_list)
    assert_response :success
  end

  test "should update notes_list" do
    patch notes_list_url(@notes_list), params: { notes_list: { code: @notes_list.code, codeTitle: @notes_list.codeTitle } }
    assert_redirected_to notes_list_url(@notes_list)
  end

  test "should destroy notes_list" do
    assert_difference('NotesList.count', -1) do
      delete notes_list_url(@notes_list)
    end

    assert_redirected_to notes_lists_url
  end
end
