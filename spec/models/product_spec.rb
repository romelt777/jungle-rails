require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations test' do
    before do
      @category = Category.new(:name => 'food')
      @product = Product.new
      @product.name = 'Jolly Rancher'
      @product.price_cents = 700
      @product.quantity = 13
      @product.category = @category
      @product.description = 'Tasty Candy'
      @product
      @product.save
    end

    it 'is valid with valid attributes' do
      expect(@product).to be_valid
    end

    it 'is not valid with no name' do
      @product.name = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid with no price' do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid with no quantity' do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end

    it 'is not valid with no category' do
      @product.category = nil
      expect(@product).to_not be_valid
    end

  end

end
