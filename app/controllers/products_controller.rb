class ProductsController < ApplicationController

  # remove commented out code

  # before_action :authenticate_user!, except: [:index, :show]

  before_action :set_session
  # i like that you incorporated product history; consider storing names & urls in the array for clickable products links
  # otherwise the user may just click the back button in the browser
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

    @product = @store.products.new(product_params.merge(user: current_user))

    # nice use of conditionals
    if @store.user == current_user
      # remember to indent inside if-blocks
      if @product.save
        flash[:notice] = "#{@product.name} was added to the products"
        redirect_to store_product_path(@store, @product)
      else
        redirect_to new_store_product_path
      end
    else
      flash[:alert] = "Only the owner of the store can add a product"
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

    #
    if @product.user  == current_user
      # i'd add conditional handling for update
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
      # i'd add conditional handling for destroy
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
