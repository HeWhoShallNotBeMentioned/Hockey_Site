class TagsController < ApplicationController

  def show
    @tags = Tag.all
    @posts = Post.all
    @tag = Tag.find(params[:id])
    @post = Post.find(params[:id])
    render :show
  end

  def new
    @post = Post.find(params[:post_id])
    @tag = Tag.new
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
  end

  def update
    @post = Post.find(params[:post_id])
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to post_path(@post)
  end

private
  def tag_params
    params.require(:tag).permit(:name, :post_id)
  end

end
