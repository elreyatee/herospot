require 'spec_helper'

describe HerosController do 
  let(:batman) { Fabricate(:hero, id: 1, name: "Batman") }  
  let(:aaron) { Fabricate(:user, full_name: "Aaron") }

  describe "GET index" do  
    it "should render index page" do 
      expect(controller).to receive(:index)
      get :index
      expect(response).to render_template(:index)
    end 
  end

  describe "GET search" do
    it "should set @results variable" do 
      get :search, search_term: "Batman"
      expect(assigns(:results)).to eq([batman])
    end

    it "should set notice if hero cannot be found" do 
      get :search, search_term: "something"
      expect(flash[:notice]).not_to be_blank
    end

    it "should render search page" do 
      get :search, search_term: "Batman"
      expect(response).to render_template(:search)
    end

    it "should raise NoMethodError if search term is blank" do 
      expect{ Hero.search_by_name("").reverse_order }.to raise_error(NoMethodError)
    end

    it "it should render back if search term is blank" do
      request.env['HTTP_REFERER'] = "http://localhost:3000"
      get :search, search_term: " "
      expect(response).to redirect_to request.env['HTTP_REFERER']
    end
  end

  describe "GET show" do
    it "should set @hero variable" do 
      get :show, id: batman.id
      expect(assigns(:hero)).to eq(batman)
    end

    it "should render show template" do  
      get :show, id: batman.id
      expect(response).to render_template(:show)
    end
  end

  describe "GET follow" do
    context "with authenticated user" do 
      before do 
        session[:user_id] = aaron.id
        request.env['HTTP_REFERER'] = "http://localhost:3000"
      end

      it "should create follow relationship if user is not a follower" do 
        get :follow, id: batman.id
        expect(batman.follower?(aaron)).to be true
      end

      it "sets notice" do 
        get :follow, id: batman.id
        expect(flash[:notice]).not_to be_blank
      end

      it "redirects to back" do 
        get :follow, id: batman.id
        expect(response).to redirect_to request.env['HTTP_REFERER']
      end
    end
  end

  describe "GET unfollow" do
    before do 
      session[:user_id] = aaron.id
      request.env['HTTP_REFERER'] = "http://localhost:3000"
    end

    context "with authenticated user" do 
      it "should destroy follow relationship" do 
        batman.relationships.create(user_id: aaron.id)
        get :unfollow, id: batman.id
        expect(batman.follower?(aaron)).to be false
      end
    end
  end
end