class AdminsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @products = Product.order("id ASC").page(params[:page]).per(5)
  end

  # def new
  # end

  # def create
  #   Product.create(product_params)
     # Product.find(params[:product_id]).inventory - params[:count]
  # end

  def destroy
    product = Product.find(params[:id])
    product.destroy
  end

  # def edit
  #   @product = Product.find(params[:id])
  # end

  # def update
  #   product = Product.find(params[:id])
  #   product.update(product_params)
  # end

  def show
    @product = Product.find(params[:id])
  end

 private
 def product_params
  params.permit(:product_grade, :supplier, :product_name, :basis_weight, :width, :length, :renryo, :inventory, :price, :text, :image)
 end

  def move_to_index
    redirect_to action: :index unless admin_signed_in?

  end


end
