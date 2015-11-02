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
    @tag = @post.tags.new(tag_params)
    @post.tags.push(@tag)
    if @tag.save
      redirect_to post_path(@post)
    else
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
    # @post = Post.find(params[:post_id])
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to admins_path
  end

private
  def tag_params
    params.require(:tag).permit(:name, :post_id)
  end

end
