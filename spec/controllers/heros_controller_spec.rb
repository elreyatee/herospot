require 'spec_helper'

describe HerosController do  
  describe "GET index" do  
    it "should render index page" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET search" do
    it "should set @results variable" do 
      batman = Hero.create(name: "Batman", publisher: "DC", biography: "Dark Knight")
      get :search, search_term: "Batman"
      expect(assigns(:results)).to eq([batman])
    end

    it "should render search page" do 
      batman = Hero.create(name: "Batman", publisher: "DC", biography: "Dark Knight")
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
      batman = Hero.create(name: "Batman", publisher: "DC", biography: "Dark Knight", id: 1)
      get :show, id: 1
      expect(assigns(:hero)).to eq(batman)
    end

    it "should render show template" do  

    end
  end

  describe "GET follow" do

  end

  describe "GET unfollow" do

  end
end