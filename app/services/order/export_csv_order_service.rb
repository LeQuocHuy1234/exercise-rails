require 'csv'

class ExportCsvOrderService
  def call(data)

    CSV.generate(headers: true) do |csv|
      csv<<["Khách hàng", data.user_name]
      csv<<["Địa chỉ", data.address]
      csv<<["Số điện thoại", data.user_phone]
      csv << ["Tên sản phẩm", "Số lượng", "Giá"]

      data.order_details.each do |data|
        csv << [data.product.name, data.qty, data.amount]
      end
    end
  end
end