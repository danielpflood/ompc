require 'test_helper'

class ProjectDownloadsControllerTest < ActionController::TestCase
  setup do
    @project_download = project_downloads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_downloads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_download" do
    assert_difference('ProjectDownload.count') do
      post :create, :project_download => @project_download.attributes
    end

    assert_redirected_to project_download_path(assigns(:project_download))
  end

  test "should show project_download" do
    get :show, :id => @project_download
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_download
    assert_response :success
  end

  test "should update project_download" do
    put :update, :id => @project_download, :project_download => @project_download.attributes
    assert_redirected_to project_download_path(assigns(:project_download))
  end

  test "should destroy project_download" do
    assert_difference('ProjectDownload.count', -1) do
      delete :destroy, :id => @project_download
    end

    assert_redirected_to project_downloads_path
  end
end
