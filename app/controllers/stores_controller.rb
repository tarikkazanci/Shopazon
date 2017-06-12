class StoresController < ApplicationController

# authenticate user except "index" and "show" pages
before_action :authenticate_user!, except: [:index, :show]

before_action :set_session
# tracking history
def set_session
  session[:store_history] ||= []
end

def index
  @stores = Store.all
  # if current_user
    # @stores = current_user.stores
  # else
  #   @stores = Store.all
  # end
end


def new
  @store = Store.new
end

def create
  # @store = Store.new(store_params)
  @store = current_user.stores.new(store_params)

   if @store.save
    flash[:notice] = "#{@store.name} was added to the stores"
    redirect_to store_path(@store)
   else
     redirect_to new_store_path
   end
end


def show
  @store = Store.find(params[:id])
  session[:store_history].push(@store.name)
end


def edit
  @store = Store.find(params[:id])
end

def update
  @store = Store.find(params[:id])

  if @store.user == current_user
    @store.update(store_params)
    flash[:notice] = "The store was updated"
  else
    flash[:alert] = "Only the owner of the store can update this store"
  end
  redirect_to store_path(@store)
end

# delete
def destroy
  @store = Store.find(params[:id])

  if @store.user == current_user
    @store.destroy
    flash[:notice] = "The store was deleted"
  else
    flash[:alert] = "Only the owner of the store can delete this store"
  end
  redirect_to stores_path(@store)
end


private
  def store_params
    params.require(:store).permit(:name, :location, :img_url)
  end
end
