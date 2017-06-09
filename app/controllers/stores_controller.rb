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

end





# def edit
#
# end
#
# def update
#
# end

# def destroy
#
# end


private
  def store_params
    params.require(:store).permit(:name, :location, :img_url)
  end
end


end
