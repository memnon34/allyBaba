class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

  def new
    @order = Order.new
    @deal = Deal.find_by(params[:id])
  end

  def edit
  end

  def show
  end

  def index
    @orders = Order.all
  end

  def create
    @deal = Deal.find_by(params[:id])
    @order = Order.new
    @order.deal_id = @deal.id
    @order.user_id = current_user.id
    if @order.save
      @deal.total_bids += 1
      @deal.save
      redirect_to current_user
    end
  end

  def update
  end

  def destroy
  end

  private
  #
  # def order_params
  #   params.require(:order)
  # end


end
