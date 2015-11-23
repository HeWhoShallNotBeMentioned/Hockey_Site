class TagsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def show
    @tags = Tag.all
    @posts = Post.all
    @post = Post.find(params[:id])
    @tag = Tag.find(params[:id])
    render :show
  end

  def new
    @post = Post.find(params[:post_id])
    @tag = Tag.new
    render :new
  end

  def create
    @post = Post.find(params[:post_id])
    if @tag = Tag.find_or_create_by(tag_params)
      @post.tags.push(@tag)
      flash[:notice] = "Tag added!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem. Your tag was not added."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:notice] = "Tag edited!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem. Your tag was not edited."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Tag deleted!"
    redirect_to post_path(@post)
  end

private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name, :post_id)
  end

end
