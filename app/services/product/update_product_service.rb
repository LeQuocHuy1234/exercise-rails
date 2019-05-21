class UpdateProductService
  def initialize(params)
    @params = params
  end

  def call
    @product = Product.find(@params[:id])
    @product.update(product_params)
  end

  private def product_params
    @params.require(:product).permit(:name, :image, :description, :price)
  end
end