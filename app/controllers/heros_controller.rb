class HerosController < ApplicationController

  before_action :require_user, only: [:follow, :unfollow]

  def index
    @heros = Hero.sample(3)
  end

  def search
    begin
      @results = Hero.search_by_name(params[:search_term]).reverse_order
      flash[:notice] = "Sorry, no results for \" #{params[:search_term]}\" " if @results.empty?
    rescue NoMethodError
      flash[:error] = "Cannot search blank field ..."
      redirect_to :back
    end
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def follow
    hero = Hero.find(params[:id])
    hero.relationships.create!(user_id: current_user.id) unless hero.follower?(current_user)
    flash[:notice] = "You're now following #{hero.name}!"
    redirect_to :back
  end

  def unfollow
    hero = Hero.find(params[:id])
    hero.relationships.find_by(user_id: current_user.id).destroy
    flash[:notice] = "You're no longer following #{hero.name}!"
    redirect_to :back
  end
end