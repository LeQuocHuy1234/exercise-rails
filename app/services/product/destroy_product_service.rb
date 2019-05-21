class DestroyProductService
  def initialize(params)
    @params = params
  end

  def call
    @product = Product.find(@params[:id])
    @product.destroy
  end
end
