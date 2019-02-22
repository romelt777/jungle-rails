class Rating < ActiveRecord::Base
  belongs to :user
  belongs to :product

  validates :rating,
    presence: true,
    length: {minimum: 1}
end
