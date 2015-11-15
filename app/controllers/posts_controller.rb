class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
    render :index
  end

  # GET /posts/1
  def show
    @posts = Post.all
    @post = Post.find(params[:id])
    render :show
  end

  # GET /posts/new
  def new
    @post = Post.new
    render :new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "Post added!"
      respond_to do |format|
        format.js
        format.html {redirect_to posts_path}
      end
    else
      flash[:alert] = "There was a problem. Your post was not added."
      respond_to do |format|
        format.js
        format.html {render :new}
      end
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    respond_to do |format|
      format.js
      format.html {render :edit}
    end
  end

  # PATCH/PUT /posts/1
  def update
    if params[:remove_tag]
      @tag = Tag.find(params[:tag_id])
      @post = Post.find(params[:id])
      @post.tags.delete(@tag)
      redirect_to post_path(@post)
    elsif @post.update(post_params)
      flash[:notice] = 'Post was successfully updated.'
      redirect_to post_path
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    #delete all post.tags  may need to find all tags first.
    @post.destroy
    flash[:notice] = 'Post was successfully deleted.'
    redirect_to posts_url
  end

  private
    #Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    #Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
