class StoresController < ApplicationController


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

  flash[:notice] = "#{@store.name} was added to the stores"

  redirect_to store_path(@store)
end

def edit
  @store = Store.find(params[:id])
end

def update
  @store = Store.find(params[:id])
  @store.update(store_params)

  flash[:notice] = "Store was updated"

  redirect_to store_path(@store)
end

def destroy
  @store = Store.find(params[:id])
  @store.destroy

  flash[:notice] = "Store was deleted"

  redirect_to stores_path(@store)
end


private
  def store_params
    params.require(:store).permit(:name, :location, :img_url)
  end
end
