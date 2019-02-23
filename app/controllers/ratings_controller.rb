class RatingsController < ApplicationController

  def create
    puts "come on"
    puts params[:rating][:rating]
    puts params[:description]
    puts params[:product_id]
    puts "hello, #{current_user.inspect}"
    @review = Rating.new(
      "product_id"=>params[:product_id],
      "description"=>params[:description],
      "rating"=>params[:rating][:rating],
      "user_id"=>current_user.id
      )
    puts @review.inspect
    if @review.save
      redirect_to root_path
    else
      render 'create'
    end
  end
end
