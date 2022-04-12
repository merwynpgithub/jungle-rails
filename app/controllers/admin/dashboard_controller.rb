class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.count
    @category_count = Category.count
    @products = Product.order(id: :desc).all
  end
end
