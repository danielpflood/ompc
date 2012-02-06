class UserCommentsController < ApplicationController
  # GET /user_comments
  # GET /user_comments.json
  def index
    @user_comments = UserComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user_comments }
    end
  end

  # GET /user_comments/1
  # GET /user_comments/1.json
  def show
    @user_comment = UserComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user_comment }
    end
  end

  # GET /user_comments/new
  # GET /user_comments/new.json
  def new
    @user_comment = UserComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user_comment }
    end
  end

  # GET /user_comments/1/edit
  def edit
    @user_comment = UserComment.find(params[:id])
  end

  # POST /user_comments
  # POST /user_comments.json
  def create
    @user_comment = UserComment.new(params[:user_comment])

    respond_to do |format|
      if @user_comment.save
        format.html { redirect_to @user_comment, :notice => 'User comment was successfully created.' }
        format.json { render :json => @user_comment, :status => :created, :location => @user_comment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_comments/1
  # PUT /user_comments/1.json
  def update
    @user_comment = UserComment.find(params[:id])

    respond_to do |format|
      if @user_comment.update_attributes(params[:user_comment])
        format.html { redirect_to @user_comment, :notice => 'User comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_comments/1
  # DELETE /user_comments/1.json
  def destroy
    @user_comment = UserComment.find(params[:id])
    @user_comment.destroy

    respond_to do |format|
      format.html { redirect_to user_comments_url }
      format.json { head :no_content }
    end
  end
end
