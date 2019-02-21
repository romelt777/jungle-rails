class User < ActiveRecord::Base
  has_secure_password

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
