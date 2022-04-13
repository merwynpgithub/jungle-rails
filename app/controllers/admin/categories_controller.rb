class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with :name => ENV["USERNAME"], :password => ENV["PASSWORD"]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

end
