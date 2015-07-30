class HerosController < ApplicationController

  before_action :require_user, only: [:follow, :unfollow, :quiz]

  def index; end

  def search
    begin
      @results = Hero.search_by_name(params[:search_term]).reverse_order
    rescue NoMethodError
      flash[:error] = "Cannot search blank field ..."
      redirect_to :back
    end
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def quiz

  end

  def follow
    hero = Hero.find(params[:id])
    hero.relationships.create!(user_id: current_user.id)
  end

  def unfollow
    hero = Hero.find(params[:id])
    hero.relationships.find_by(user_id: current_user.id).destroy
  end
end