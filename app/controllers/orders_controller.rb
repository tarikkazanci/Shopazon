class OrdersController < ApplicationController

def index
  # @orders = Order.all
  @orders = Order.where(user_id: current_user.id)
end

def show
  @order = Order.find(params[:id])
  @product = @order.product
  @user = @order.user
end


# NEW
def new
  @order = Order.new
end

def create
  # @order = Order.new(order_params)
  @order = current_user.orders.new(order_params)

  if @order.save
    flash[:notice] = "Order was successfully created"
    redirect_to orders_path(@order)
  else
    redirect_to new_order_path
  end
end


# EDIT
def edit
  @order = Order.find(params[:id])
end

def update
  @order = Order.find(params[:id])
  # @order = current_user.orders.new(order_params)

  if @order.user  == current_user
     @order.update(order_params)
     flash[:notice] = "Order was updated"
  else
     flash[:alert] = "Only the owner of the order can update this order"
  end
    redirect_to orders_path
end


# DELETE
def destroy
  @order = Order.find(params[:id])
  if @order.user  == current_user
     @order.destroy
     flash[:notice] = "Order was deleted"
  end
    redirect_to orders_path(@order)
end

private
  def order_params
    params.require(:order).permit(:product_id, :name, :price)
 end

end
