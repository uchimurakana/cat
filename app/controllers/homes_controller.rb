class HomesController < ApplicationController
  def index
    @homes = Home.limit(5).order("created_at DESC")
  end
  def new
  end
  def create
    Home.create!(home_params)
  end
  private
  def home_params
    params.permit(:comment, :title,:pohoto)
  end
end
