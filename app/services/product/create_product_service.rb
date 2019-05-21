class CreateProductService
  def initialize(params)
    @params = params
  end
  def call
    @data_csv = @params[:product][:file_csv]
    CSV.foreach(@data_csv.path, :headers => true) do |row|
      @data = Product.new
      @data.name = row[0]
      @data.image = row[1]
      @data.description = row[2]
      @data.price = row[3]
      @data.save
    end
  end
end
