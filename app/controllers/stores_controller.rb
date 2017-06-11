class StoresController < ApplicationController

before_action :set_session

def set_session
  session[:store_history] ||= []
end


def index
  @stores = Store.all
end

def show
  @store = Store.find(params[:id])

  session[:store_history].push(@store.name)
end

def new
  @store = Store.new
end

def create
  @store = Store.new(store_params)

   if @store.save
    flash[:notice] = "#{@store.name} was added to the stores"
    redirect_to store_path(@store)

   else
     redirect_to new_store_path(@store)
   end
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
