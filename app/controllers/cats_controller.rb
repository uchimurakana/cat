class CatsController < ApplicationController
  def index
    @cats = Neko.all
  end
  def new
  end
  def create
    Neko.create!(cat_params)
  end
  def edit
    @cat = Neko.find(params[:id])
  end
  def show
    @cat = Neko.find(params[:id])
  end
  def update
    @cat = Neko.find(params[:id])
  end

  def destroy 
    cat = Neko.find(params[:id])
    cat.destroy
    #destroyメソッドを使用し対象のツイートを削除する。
    redirect_to root_path
  end
  
  private
  def selling_to_show
    item = Neko.find_by(id: params[:id])
  end
  def cat_params
    params.permit(:name, :sex,:image,:kind,:comment )
  end
end
