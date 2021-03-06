require 'spec_helper'

describe UsersController do 

  describe "GET new" do 
    it "sets @user variable" do 
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do 
    context "with valid input" do 
      before do 
        post :create, user: Fabricate.attributes_for(:user)
      end

      it "creates user" do 
        expect(User.count).to eq(1)
      end

      it "redirects to login page" do 
        expect(response).to redirect_to login_path
      end
    end

    context "with invalid input" do 
      before do 
        post :create, user: { email: "someemail@email.com" }
      end

      it "does not create user" do 
        expect(User.count).to eq(0)
      end

      it "sets the error message" do 
        expect(flash[:error]).not_to be_blank
      end

      it "redirects to registration page" do 
        expect(response).to render_template :new
      end
    end
  end
end