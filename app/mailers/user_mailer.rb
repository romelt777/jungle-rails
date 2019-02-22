class UserMailer < ApplicationMailer

  def send_receipt_email(current_user, products, quantity, order)
    @current_user = current_user
    @product = products
    @quantity = quantity
    @order = order
    @total_price = 0
    puts "yea, #{current_user.inspect}"
    mail(to: current_user.email, subject: "Order ID: #{order.id}")
  end
end
