class UsersController < ApplicationController

  def show
    @name = current_user.name
    @orders = current_user.orders.order("id DESC").page(params[:page]).per(5)
  end

end
