class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Rating.where({product_id: params[:id]}).reverse
    @total_rating = 0
    @current_user = current_user
    puts "SCANDAL, #{@current_user.inspect}"
  end

end
