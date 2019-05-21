class EditStatusOrderService
  def initialize(id, status)
    @id = id
    @status = status
  end

  def call
    @order = Order.find(@id)
    @order.update({ status: @status })
  end
end