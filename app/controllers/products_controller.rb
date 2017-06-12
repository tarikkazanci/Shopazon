class ProductsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_session

  def set_session
    session[:product_history] ||= []
  end

  def index
   @products = Product.all
  end


  def new
    @store = Store.find(params[:store_id])
    @product = @store.products.new
  end

  def create
    @store = Store.find(params[:store_id])

    # @product = current_user.stores.products.new(product_params)
    @product = @store.products.create!(product_params.merge(user: current_user))

    if @product.save
      flash[:notice] = "#{@product.name} was added to the products"
      redirect_to store_product_path(@store, @product)
    else
      redirect_to new_store_product_path
    end
  end


  def show
    @product = Product.find(params[:id])
    session[:product_history].push(@product.name)
  end


  def edit
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:id])
  end

  def update
    @store = Store.find(params[:store_id])
    @product = @store.products.find(params[:id])

    if @product.user  == current_user
       @product.update(product_params)
       flash[:notice] = "Product was updated"
    else
       flash[:alert] = "Only the owner of the store can update this product"
    end
      redirect_to store_product_path
end

  def destroy
    @product = Product.find(params[:id])

    if @product.user == current_user
      @product.destroy
      flash[:notice] = "The product was deleted"
    else
      flash[:alert] = "Only the owner of the store can delete this product"
    end
    redirect_to store_path(@product.store)
  end

  private
    def product_params
      params.require(:product).permit(:name, :category, :price, :img_url)
   end
end
