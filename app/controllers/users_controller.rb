class UsersController < ApplicationController

def show
  @user = current_user
  @orders = @user.orders
end



#
# private
#   def user_params
#     params.require(:user).permit(:firstname, :lastname, :email, :password)
#  end

end
