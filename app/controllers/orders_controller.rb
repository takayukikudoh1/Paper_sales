class OrdersController < ApplicationController

  def create
    order = Order.new(product_params)
    order.save
    product = Product.find(params[:product_id])
    product.inventory -= params[:count].to_i
    product.save

    # SampleMailer.send_when_create.deliver_now
  end

  private
  def product_params
   params.permit(:product_id, :count).merge(user_id: current_user.id)
  end

end
