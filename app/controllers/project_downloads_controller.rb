class ProjectDownloadsController < ApplicationController
  # GET /project_downloads
  # GET /project_downloads.json
  def index
    @project_downloads = ProjectDownload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @project_downloads }
    end
  end

  # GET /project_downloads/1
  # GET /project_downloads/1.json
  def show
    @project_download = ProjectDownload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @project_download }
    end
  end

  # GET /project_downloads/new
  # GET /project_downloads/new.json
  def new
    @project_download = ProjectDownload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @project_download }
    end
  end

  # GET /project_downloads/1/edit
  def edit
    @project_download = ProjectDownload.find(params[:id])
  end

  # POST /project_downloads
  # POST /project_downloads.json
  def create
    @project_download = ProjectDownload.new(params[:project_download])

    respond_to do |format|
      if @project_download.save
        format.html { redirect_to @project_download, :notice => 'Project download was successfully created.' }
        format.json { render :json => @project_download, :status => :created, :location => @project_download }
      else
        format.html { render :action => "new" }
        format.json { render :json => @project_download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_downloads/1
  # PUT /project_downloads/1.json
  def update
    @project_download = ProjectDownload.find(params[:id])

    respond_to do |format|
      if @project_download.update_attributes(params[:project_download])
        format.html { redirect_to @project_download, :notice => 'Project download was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @project_download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_downloads/1
  # DELETE /project_downloads/1.json
  def destroy
    @project_download = ProjectDownload.find(params[:id])
    @project_download.destroy

    respond_to do |format|
      format.html { redirect_to project_downloads_url }
      format.json { head :no_content }
    end
  end
end
