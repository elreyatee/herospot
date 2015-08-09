require 'spec_helper'

describe SessionsController do 
  let(:aaron) { Fabricate(:user) } 

  describe "GET new" do 
    it "redirects to front page if logged in" do 
      session[:user_id] = aaron.id
      get :new
      expect(response).to redirect_to root_path
    end

    it "renders new template for unauthenticated users" do 
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST create" do
    context "with valid credentials" do 
      before do 
        post :create, full_name: aaron.full_name, email: aaron.email, password: aaron.password
      end

      it "sets the user in session" do 
        session[:user_id] = aaron.id
        expect(session[:user_id]).not_to be_nil
      end

      it "set the notice" do 
        expect(flash[:notice]).not_to be_blank
      end

      it "redirects user to front page" do 
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid credentials" do 
      before do 
        post :create, full_name: aaron.full_name, email: aaron.email, password: "oops"
      end

      it "does not put user in the session" do 
        expect(session[:user_id]).to be_nil
      end

      it "sets the error message" do 
        expect(flash[:error]).not_to be_blank
      end

      it "renders login page" do 
        expect(response).to render_template :new
      end
    end

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