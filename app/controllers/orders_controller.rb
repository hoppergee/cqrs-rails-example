class OrdersController < ApplicationController
  def index
    @orders = Orders::Order.all
  end
end
