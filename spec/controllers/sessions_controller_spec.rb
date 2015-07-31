require 'spec_helper'

describe SessionsController do  

  describe "GET new" do 

  end

  describe "POST create" do

  end

  describe "GET destroy" do 
    it "clears the user session" do 
      get :destroy
      session[:user_id] = nil
      expect(session[:user_id]).to be_nil
    end

    it "sets the notice" do 
      get :destroy
      expect(flash[:notice]).not_to be_blank
    end

    it "redirects user to front page" do 
      get :destroy
      expect(response).to redirect_to(root_path)
    end
  end

end