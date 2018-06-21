class CommentsController < ApplicationController
  before_action :set_post

  def index
    @comments = Comment.all

  end

  def create
    # @post = Post.find(params[:post_id])
    # comment_params = params.require(:comment).permit(:name, :content)
    @comment = @post.comments.create(comment_params)
    redirect_to @post
  end

  def edit
    # @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    # @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    # comment_params = params.require(:comment).permit(:name, :content)
    @comment.update(comment_params)
    redirect_to @post
  end

  def comment_params
    comment_params = params.require(:comment).permit(:name, :content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post
  end
end
