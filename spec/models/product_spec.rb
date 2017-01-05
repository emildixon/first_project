require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      #@product = Product.create!(name: "lamy pen")
      #@user = User.create!(email: "emildixon@yahoo.com", password: "testpass")
      @product = FactoryGirl.create(:product)
      @user = FactoryGirl.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Awful pen!")
      @product.comments.create!(rating: 3, user: @user, body: "Okay pen!")
      @product.comments.create!(rating: 5, user: @user, body: "Great pen!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end
  
end