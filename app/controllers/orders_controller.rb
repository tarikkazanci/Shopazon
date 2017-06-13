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



def new
  @order = Order.new
end


def create
  # @order = Order.new(order_params)
  @order = current_user.orders.new(order_params)

  if @order.save
    redirect_to orders_path(@order)
  else
    redirect_to new_order_path
  end
end




private
  def order_params
    params.require(:order).permit(:product_id)
 end

end
