# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
    Product.create(name: "San phan #{i}", image: "https://9mobi.vn/cf/images/2015/03/nkk/anh-dep-1.jpg", description: "Descript #{i}", price: 100000)
end

User.create(name: "lequochuy", email: "lequochuysv@gmail.com", password_digest: "$2a$10$tHRQPSp3Qcty61OIl1RmEOchG/Cpo0/FMCXBQeiMZ3WpVuj6lm8iu")

Order.create(user_name: "le quoc huy", user_email: "lequochuysv@gmail.com", user_phone: "123456789", address: "165  cau giay", amount: 500000, status: 1)

OrderDetail.create(product_id: 4, order_id: 1, qty: 5, amount: 100000)
OrderDetail.create(product_id: 5, order_id: 1, qty: 5, amount: 100000)