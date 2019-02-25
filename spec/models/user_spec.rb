require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations test' do
    before do
      @user = User.new
      @user.first_name = 'Romel'
      @user.last_name = 'Yu'
      @user.email = 'romel@nba.com'
      @user.password = '000000'
      @user.password_confirmation = '000000'
      @user.save
    end

    context 'New user' do
      it 'is valid with valid attributes' do
        expect(@user).to be_valid
      end

      it 'is not valid with no first name' do
        @user.first_name = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid with no last name' do
        @user.last_name = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid with no email' do
        @user.email = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid with no password' do
        @user.password = nil
        expect(@user).to_not be_valid
      end

      it 'is not valid with different passwords' do
        @user.password = '000001'
        expect(@user).to_not be_valid
      end

      it 'is not valid with duplicate emails (must be unique)' do
        @user1 = User.new
        @user1.first_name = 'Rom'
        @user1.last_name = 'Yop'
        @user1.email = 'rob@nba.com'
        @user1.password = '000000'
        @user1.password_confirmation = '000000'
        @user1.save
        @user.email = "rob@nba.com"
        expect(@user).to_not be_valid
      end

      it 'is not valid with short password' do
        @user.password = '000'
        expect(@user).to_not be_valid
      end

    end

  end
end
