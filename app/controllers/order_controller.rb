class OrderController < ApplicationController
  def index
     @order = Order.find(params[:customer_id])
  end

  def new
      @customer = Customer.find params[:customer_id]
      @order = @customer.orders.new
   end


    def create
      @customer = Customer.find params[:customer_id]
      @order = @customer.orders.new(order_params)
      @order.save
   end

    
  end

  def show
   @order = Order.find(params[:customer_id]) 
  end

  def edit
  end

  def delete
  end

  private
  def order_params
    params.require(:order).permit(:customer_id, :pakket, :verstuurt)
  end

