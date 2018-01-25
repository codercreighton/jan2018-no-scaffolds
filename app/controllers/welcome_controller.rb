class WelcomeController < ApplicationController
  def index
  	@product = Product.new
  end

  

  def users
  	if params[:name] != nil
  		user = User.create(name: params[:name], age: params[:age])
  	end	
		@users = User.all
  end	

  def show_user
  	@user = User.find(params[:id])
  end	

  def edit_user
  	@user = User.find(params[:id])
  end	

  def update_user
  	user = User.find(params[:id].to_i)
  	user.update(name: params[:name], age: params[:age])
  	redirect_to show_user_path(id: params[:id].to_i)
  end	

  def create_products
  	product = Product.create(product_params)
  	redirect_to products_path
  end	

  def products
  	@products = Product.all
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :price,:quantity)
  	end	
end
