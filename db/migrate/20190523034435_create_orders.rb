class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_phone
      t.string :address
      t.decimal :amount
      t.integer :status
      t.timestamps
    end
  end
end
