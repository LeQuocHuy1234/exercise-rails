class Product < ApplicationRecord
    validates :name, presence: { message: 'Tên nhập không để trống' }, length: { in: 5..50, message: 'Tên nhập không đúng định dạng' }
    validates :description, presence: { message: 'Nội dung không để trống' }
    validates :price, presence: { message: 'Giá không để trống' }, numericality: { only_integer: true, message: 'Giá nhập không đúng'  }
end
