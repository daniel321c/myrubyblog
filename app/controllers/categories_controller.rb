class CategoriesController < ApplicationController
  # before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  
  def index
    @categories = Category.all

  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts

  end

 
end
