class StoresController < ApplicationController

def home

end

def index
  @stores = Store.all
end

def show
  @store = Store.find(params[:id])
end

def new
  @store = Store.new
end

def create
  @store = Store.create(store_params)

  redirect_to store_path(@store)
end

def edit
  @store = Store.find(params[:id])
end

def update
  @store = Store.find(params[:id])
  @store.update(store_params)

  redirect_to store_path(@store)
end

def destroy
  @store = Store.find(params[:id])
  @store.destroy

  redirect_to stores_path
end


private
  def store_params
    params.require(:store).permit(:name, :location, :img_url)
  end
end
