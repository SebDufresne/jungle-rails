require 'rails_helper'

RSpec.describe User, type: :model do

  context 'password match' do
    user = User.new(email: 'test@test.com', password: 'hogehoge', password_confirmation: 'hogehoge')
    user.valid?
    it 'password match' do
      expect(user.errors[:password_confirmation]).not_to be_present
    end
  end

  context "password don't match" do
    user = User.new(email: 'test@test.com', password: 'hogehoge', password_confirmation: 'hoge')
    user.valid?
    it "password don't match" do
      expect(user.errors[:password_confirmation]).to be_present
    end
  end

  it 'email must be unique' do
    user = User.new(email: 'test@test.com', password: 'hogehoge', password_confirmation: 'hogehoge')
    user.save
  
    u = User.new(email: 'test@test.com', password: 'hogehoge', password_confirmation: 'hogehoge')
    u.save
  
    expect(u.errors[:email].first).to eq('has already been taken')
  end

  it 'password length less than 5 characters is invalid' do
    user = User.new(email: 'bugs', password: '1234')

    result = user.save

    expect(result).to be(false)
  end

  it 'password length must be at-least 5 characters' do
    user = User.new(email: 'bugs', password: '12345')
  
    result = user.save
  
    expect(result).to be(true)
  end
  
  

  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  # end

  # def create
  #   user = User.new(user_params)
  #   if user.save
  #     session[:user_id] = user.id
  #     redirect_to '/'
  #   else
  #     redirect_to '/signup'
  #   end
  # it "is valid" do
  #   @product = Product.new
  #   @cat = Category.new
  #   @cat.name = 'Test'
  #   @product.name = 'Test' # invalid state
  #   @product.price_cents = 12311
  #   @product.quantity = 3
  #   @product.category = @cat
  #   expect(@product.valid?).to be true
  # end

  # it "name presence" do
  #   @product = Product.new
  #   @product.name = nil # invalid state
  #   @product.valid?
  #   expect(@product.errors[:name]).to  include("can't be blank")

  #   @product.name = 'test' # valid state
  #   @product.valid? 
  #   expect(@product.errors[:name]).not_to  include("can't be blank")
  # end

  # it "price_cents presence" do
  #   @product = Product.new
  #   @product.price_cents = nil # invalid state
  #   @product.valid?
  #   expect(@product.errors[:price_cents]).to  include("is not a number")

  #   @product.price_cents = 12311 # valid state
  #   @product.valid? 
  #   expect(@product.errors[:price_cents]).not_to  include("can't be blank")
  # end

  # it "quantity" do
  #   @product = Product.new
  #   @product.quantity = nil # invalid state
  #   @product.valid?
  #   expect(@product.errors[:quantity]).to  include("can't be blank")

  #   @product.quantity = 3 # valid state
  #   @product.valid? 
  #   expect(@product.errors[:quantity]).not_to  include("can't be blank")
  # end

  # it "has category_id" do
  #   @cat = Category.new
  #   @product = Product.new
  #   @product.category = nil # invalid state
  #   @product.valid?
  #   expect(@product.errors[:category]).to  include("can't be blank")

  #   @product.category = @cat # valid state
  #   @product.valid? 
  #   expect(@product.errors[:category]).not_to  include("can't be blank")
  # end

  #   It must be created with a password and password_confirmation fields
  #       These need to match so you should have an example for where they are not the same
  #       These are required when creating the model so you should also have an example for this
  #   Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
  #   Email, first name, and last name should also be required

  #   t.string   "name"
  #   t.string   "email"
  #   t.string   "password_digest"
  # end


end
