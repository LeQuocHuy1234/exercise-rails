require 'csv'
require 'order/edit_status_order_service'
require 'order/export_csv_order_service'

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def edit_status
    respond_to do |format|
      @order_edit = EditStatusOrderService.new(params[:id], params[:status]).call
      if @order_edit
        format.html
        format.json { render json: @order_edit  }
      else
        format.html
        format.json { render json: @order_edit.errors }
      end
    end
  end

  def show
    @order = Order.includes(:order_details => :product).find(params[:id])
  end

  def export_csv
    @order = Order.includes(:order_details => :product).find(params[:id])
    respond_to do |format|
      format.html { redirect_back(fallback_location: { action: 'index' }) }
      format.csv { send_data ExportCsvOrderService.new.call(@order), filename: "bill.csv" }
    end

  end
end
