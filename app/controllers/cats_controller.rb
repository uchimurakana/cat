class CatsController < ApplicationController
  def index
    @cats = Neko.all
  end
  def new
  end
  def create
    Neko.create!(cat_params)
  end
  private
  def cat_params
    params.permit(:name, :sex,:image,:kind,:comment )
  end
end
