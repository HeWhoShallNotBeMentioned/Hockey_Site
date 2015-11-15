class CommentsController < ApplicationController
    before_filter :authenticate_user!
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show
    @comments = Comment.all
    @posts = Post.all
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:id])
    render :show
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    render :new
  end

  def create
    @post = Post.find(params[:post_id])

    if @post.comments.create(comment_params)
      redirect_to @post, notice: 'Comment was successfully added.'
    else
      rediredt_to @post, alert: "Error creating comment."
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.js
      format.html {render :edit}
    end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@post), notice: 'Comment was successfully edited.'
    else
      render :edit, alert: "Error editing comment."
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to post_path(@post), notice:  "Comment was successfully deleted."
  end


  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
