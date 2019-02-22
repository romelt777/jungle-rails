class UserMailer < ApplicationMailer

  def send_receipt_email(current_user, products, quantity)
    puts "yea, #{current_user.inspect}"
    mail(to: current_user.email, subject: 'testing')
  end
end
