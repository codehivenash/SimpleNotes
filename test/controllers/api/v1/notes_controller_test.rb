require 'test_helper'

class Api::V1::NotesControllerTest < ActionController::TestCase
  setup do
    @api_v1_note = api_v1_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_note" do
    assert_difference('Api::V1::Note.count') do
      post :create, api_v1_note: {  }
    end

    assert_redirected_to api_v1_note_path(assigns(:api_v1_note))
  end

  test "should show api_v1_note" do
    get :show, id: @api_v1_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_note
    assert_response :success
  end

  test "should update api_v1_note" do
    patch :update, id: @api_v1_note, api_v1_note: {  }
    assert_redirected_to api_v1_note_path(assigns(:api_v1_note))
  end

  test "should destroy api_v1_note" do
    assert_difference('Api::V1::Note.count', -1) do
      delete :destroy, id: @api_v1_note
    end

    assert_redirected_to api_v1_notes_path
  end
end
