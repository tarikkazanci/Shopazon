class ProductsController < ApplicationController

  def index
   @products = Product.all
  end


  def new
    @store = Store.find(params[:store_id])
    @product = @store.products.new
  end

  def create
    @store = Store.find(params[:store_id])
    @product = @store.products.create(product_params)

    redirect_to store_product_path(@store, @product)
  end


  def show
    @product = Product.find(params[:id])
  end

  def edit
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:id])
  end

  def update
    @store = Store.find(params[:store_id])
    @product = @store.products.find(params[:id])

    @product.update(product_params)

    redirect_to store_product_path
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to store_path(@product.store)
  end

  private
    def product_params
      params.require(:product).permit(:name, :category, :price, :img_url)
   end
end
