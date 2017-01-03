require 'rails_helper'

describe UsersController, :type => :controller do
  
  let(:user) { User.create!(email: 'emildixon@yahoo.com', password: 'testpass')}
  let(:userTwo) { User.create!(email: 'usertwo@yahoo.com', password: '123456789')}

  describe 'GET #show' do

  context 'User is logged in' do
    before do
      sign_in user
    end

    it "loads correct user details" do
      get :show, id: user.id
      expect(response).to have_http_status(200)
      expect(assigns(:user)).to eq user
    end
  end

  context 'No user is logged in' do
    it "redirects to login" do
      get :show, id: user.id
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  context 'User cannnot access userTwo information' do
    before do
      sign_in user
    end

    it "redirects to login" do
      get :show, id: userTwo.id
      expect(response).to redirect_to(root_path)
    end

    it "fails to load userTwo details" do
      get :show, id: userTwo.id
      expect(response).to have_http_status(302)
    end
  end

  end


end