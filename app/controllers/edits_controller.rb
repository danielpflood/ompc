class EditsController < ApplicationController
  # GET /edits
  # GET /edits.json
  def index
    @edits = Edit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @edits }
    end
  end

  # GET /edits/1
  # GET /edits/1.json
  def show
    @edit = Edit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @edit }
    end
  end

  # GET /edits/new
  # GET /edits/new.json
  def new
    @edit = Edit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @edit }
    end
  end

  # GET /edits/1/edit
  def edit
    @edit = Edit.find(params[:id])
  end

  # POST /edits
  # POST /edits.json
  def create
    @edit = Edit.new(params[:edit])

    respond_to do |format|
      if @edit.save
        format.html { redirect_to @edit, :notice => 'Edit was successfully created.' }
        format.json { render :json => @edit, :status => :created, :location => @edit }
      else
        format.html { render :action => "new" }
        format.json { render :json => @edit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /edits/1
  # PUT /edits/1.json
  def update
    @edit = Edit.find(params[:id])

    respond_to do |format|
      if @edit.update_attributes(params[:edit])
        format.html { redirect_to @edit, :notice => 'Edit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @edit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /edits/1
  # DELETE /edits/1.json
  def destroy
    @edit = Edit.find(params[:id])
    @edit.destroy

    respond_to do |format|
      format.html { redirect_to edits_url }
      format.json { head :no_content }
    end
  end
end
