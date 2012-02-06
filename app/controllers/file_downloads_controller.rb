class FileDownloadsController < ApplicationController
  # GET /file_downloads
  # GET /file_downloads.json
  def index
    @file_downloads = FileDownload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @file_downloads }
    end
  end

  # GET /file_downloads/1
  # GET /file_downloads/1.json
  def show
    @file_download = FileDownload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @file_download }
    end
  end

  # GET /file_downloads/new
  # GET /file_downloads/new.json
  def new
    @file_download = FileDownload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @file_download }
    end
  end

  # GET /file_downloads/1/edit
  def edit
    @file_download = FileDownload.find(params[:id])
  end

  # POST /file_downloads
  # POST /file_downloads.json
  def create
    @file_download = FileDownload.new(params[:file_download])

    respond_to do |format|
      if @file_download.save
        format.html { redirect_to @file_download, :notice => 'File download was successfully created.' }
        format.json { render :json => @file_download, :status => :created, :location => @file_download }
      else
        format.html { render :action => "new" }
        format.json { render :json => @file_download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /file_downloads/1
  # PUT /file_downloads/1.json
  def update
    @file_download = FileDownload.find(params[:id])

    respond_to do |format|
      if @file_download.update_attributes(params[:file_download])
        format.html { redirect_to @file_download, :notice => 'File download was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @file_download.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /file_downloads/1
  # DELETE /file_downloads/1.json
  def destroy
    @file_download = FileDownload.find(params[:id])
    @file_download.destroy

    respond_to do |format|
      format.html { redirect_to file_downloads_url }
      format.json { head :no_content }
    end
  end
end
