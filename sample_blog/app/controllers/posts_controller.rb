class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post.id)
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    @post.title = post_params[:title]
    @post.body = post_params[:body]
    @post.save
    redirect_to post_path(@post.id)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(post_params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
