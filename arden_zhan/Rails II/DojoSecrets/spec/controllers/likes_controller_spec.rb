require 'rails_helper'
RSpec.describe LikesController, type: :controller do 
  before do 
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, secret: @secret, user: @user)
  end
  context "when not logged in " do 
    before do 
      session[:user_id] = nil
    end
    it "cannot create a like" 
    it "cannot destroy a like" 
  end

  context "when signed in as the wrong user" do
    it "shouldn't be able to destroy a like"
  end 
end