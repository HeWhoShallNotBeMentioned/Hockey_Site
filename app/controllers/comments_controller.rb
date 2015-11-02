class CommentsController < ApplicationController

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
    redirect_to posts_path, notice:  "Comment was successfully deleted."
  end


  private
    def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
