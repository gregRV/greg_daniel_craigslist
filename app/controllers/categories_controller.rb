class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def new
    # passes a category to the form_for
    @category = Category.new
  end

  def create
    @category = Category.create(params[:category])
    redirect_to @category
  end

  def show
    @category = Category.find(params[:id])
    @post = Post.new
  end
end
