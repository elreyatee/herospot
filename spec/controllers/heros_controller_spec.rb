require 'spec_helper'

describe HerosController do 
  let(:hero) { Fabricate(:hero) } 

  describe "GET index" do  
    it "should render index page" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET search" do
    it "should set @results variable" do 
      get :search, search_term: "Batman"
      expect(assigns(:results)).to eq([hero])
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
      get :show, id: hero.id
      expect(assigns(:hero)).to eq(hero)
    end

    it "should render show template" do  
      get :show, id: hero.id
      expect(response).to render_template(:show)
    end
  end

  describe "GET follow" do
    # it "should set follower for authenticated user" do
      
    # end
    # it "should find the correct hero"
    # it "should not set user to follow hero if user is not a follower"
    # it "should flash message if user is already a follower"
    
    # context "without logged in user" do
    #   it "should not set follower if user is not logged in" do
    #   it "should flash message to login"
    #   it "should redirect to log in  page"
    # end
  end

  describe "GET unfollow" do

  end
end