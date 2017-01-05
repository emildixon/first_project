require 'rails_helper'

describe CommentsController, :type => :controller do 
  
  context "Proper comment" do
    before do
      @user = FactoryGirl.create(:user)
      @product = Product.create!(name: "pen")
      @product.comments.create!(rating: 1, user: @user, body: "Awful pen!")
    end

    it "redirects to product page" do
      expect(response).to have_http_status(200)
    end
  end

end