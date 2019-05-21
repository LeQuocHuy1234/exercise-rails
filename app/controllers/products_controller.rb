require 'csv'
require 'product/update_product_service'
require 'product/create_product_service'
require 'product/create_product_service'

class ProductsController < ApplicationController
  def index
    @products = Product.all()
  end

  def create
    CreateProductService.new(params).call
    redirect_to(:action => 'index')
  end

  def destroy
    DestroyProductService.new(params).call
    redirect_to(:action => 'index')
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    if UpdateProductService.new(params).call
      redirect_to(:action => 'index')
    else
      render "edit"
    end
  end

  private def product_params
    params.require(:product).permit(:name, :image, :description, :price)
  end
end
