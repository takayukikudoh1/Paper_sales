class ProductsController < ApplicationController

  # before_action :move_to_index, except: :index

  def index
    @products = Product.order("id ASC").page(params[:page]).per(5)
  end

  def new
  end

  def create
   Product.create(product_params)
   # Product.find(params[:product_id]).inventory - params[:count]
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('product_name LIKE(?)', "%#{params[:keyword]}%").limit(20)
     # redirect_to controller: :products, action: :index
  end

 private
 def product_params
  params.permit(:product_grade, :supplier, :product_name, :basis_weight, :width, :length, :renryo, :inventory, :price, :text, :image)
 end

  def move_to_index
    redirect_to action: :index unless user_signed_in?

  end


end
