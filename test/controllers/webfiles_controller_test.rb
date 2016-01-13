require 'test_helper'

class WebfilesControllerTest < ActionController::TestCase
  setup do
    @webfile = webfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webfile" do
    assert_difference('Webfile.count') do
      post :create, webfile: { name: @webfile.name, phone_number: @webfile.phone_number }
    end

    assert_redirected_to webfile_path(assigns(:webfile))
  end

  test "should show webfile" do
    get :show, id: @webfile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webfile
    assert_response :success
  end

  test "should update webfile" do
    patch :update, id: @webfile, webfile: { name: @webfile.name, phone_number: @webfile.phone_number }
    assert_redirected_to webfile_path(assigns(:webfile))
  end

  test "should destroy webfile" do
    assert_difference('Webfile.count', -1) do
      delete :destroy, id: @webfile
    end

    assert_redirected_to webfiles_path
  end
end
