require 'rails_helper'

describe Order do 

context "when there is an order" do
  before do
    @product = Product.create!(name: "lamy pen")
    @user = User.create!(email: "emildixon@yahoo.com", password: "testtest")
  end

  it "creates new order" do
    expect(Order.new(product_id: @product, user_id: @user)).to be_valid
  end

end

end
