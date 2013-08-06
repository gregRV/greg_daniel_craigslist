class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(params[:post])
    redirect_to category_post_path(@category, @post)
  end

  def show
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end
end
