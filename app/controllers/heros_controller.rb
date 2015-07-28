class HerosController < ApplicationController

  before_action :require_user, only: [:follow, :quiz]

  def index

  end

  def search
    @results = Hero.search_by_name(params[:search_term]).reverse_order
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def quiz

  end

  def follow
    
  end

  def unfollow

  end
end