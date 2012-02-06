require 'test_helper'

class FileDownloadsControllerTest < ActionController::TestCase
  setup do
    @file_download = file_downloads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_downloads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_download" do
    assert_difference('FileDownload.count') do
      post :create, :file_download => @file_download.attributes
    end

    assert_redirected_to file_download_path(assigns(:file_download))
  end

  test "should show file_download" do
    get :show, :id => @file_download
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @file_download
    assert_response :success
  end

  test "should update file_download" do
    put :update, :id => @file_download, :file_download => @file_download.attributes
    assert_redirected_to file_download_path(assigns(:file_download))
  end

  test "should destroy file_download" do
    assert_difference('FileDownload.count', -1) do
      delete :destroy, :id => @file_download
    end

    assert_redirected_to file_downloads_path
  end
end
