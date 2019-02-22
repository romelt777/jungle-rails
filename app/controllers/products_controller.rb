class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Rating.where({product_id: params[:id]})
    @total_rating = 0;
  end

end
