class User < ActiveRecord::Base

  validates :first_name,
    presence: true,
    length: {minimum: 2}

  validates :last_name,
    presence: true,
    length: {minimum: 2}

  validates :email,
    presence: true,
    length: {minimum: 5}

  validates :password,
    presence: true,
    length: {minimum: 6}
end
