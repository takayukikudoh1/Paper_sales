class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.inventory -= params[:count].to_i

    if product.inventory < 0
      redirect_to product_path(params[:product_id])
    else
      product.save
      order = Order.create(product_params)
      SampleMailer.send_when_create(current_user, order).deliver
    end
  end

  private
  def product_params
   params.permit(:product_id, :count, :where, :whom, :tel).merge(user_id: current_user.id)
  end

end
