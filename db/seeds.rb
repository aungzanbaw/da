# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.delete_all
@customer = Customer.create!(name:"Kyaw Kyaw", phone:909090909, password:"123123", city:"Yangon", address: "no 1 aka str, ABC township")
@customer1 = Customer.create!(name:"Aye Aye", phone:943105273, password:"123123", city:"Yangon", address: "no 123 aka str, YUI township")
@customer2 = Customer.create!(name:"Maung Maung", phone:9323716728, password:"123123", city:"Yangon", address: "no 909 lol str, XYZ township")

Department.delete_all
@dep = Department.create!(name:"Watch", description:"a small timepiece worn typically on a strap on one's wrist")
@dep1 = Department.create!(name:"Smart phone", description:"a cellular phone that performs many of the functions of a computer")
@dep2 = Department.create!(name:"Electronic", description:"carried out or accessed by means of a computer or other electronic device")

Staff.delete_all
@staff = Staff.create!(username:"Kyaw Kyaw", password:"123123", department:@dep)
@staff1 = Staff.create!(username:"Aye Aye", password:"123123", department:@dep1)
@staff2 = Staff.create!(username:"Maung Maung", password:"123123", department:@dep2)

Product.delete_all
@p = Product.create!(name:"AAA", brand:"AAA", group:"aa group", price:12300, department:@dep)
@p1 = Product.create!(name:"BBB", brand:"BBB", group:"bb group", price:323, department:@dep)
@p2 = Product.create!(name:"CCC", brand:"CCC", group:"cc group", price:4344, department:@dep1)
@p3 = Product.create!(name:"DDD", brand:"DDD", group:"dd group", price:86776, department:@dep1)
@p4 = Product.create!(name:"EEE", brand:"EEE", group:"ee group", price:8462, department:@dep2)
@p5 = Product.create!(name:"FFF", brand:"FFF", group:"ff group", price:93737, department:@dep2)

Order.delete_all
@o = Order.create!(vocher:"123123", customer:@customer, delivery:"Car", gate:"Mandalar Min", remark:"write something" , payment:"cash")
@o1 = Order.create!(vocher:"234234", customer:@customer1, delivery:"Plane", gate:"Mandalar Min", remark:"write something" , payment:"credit")
@o2 = Order.create!(vocher:"345345", customer:@customer2, delivery:"Ship", gate:"Mandalar Min", remark:"important" , payment:"cash")

Detail.delete_all
Detail.create!(order:@o, product:@p, qty:1, price:0, remark:"out of stock")
Detail.create!(order:@o, product:@p1, qty:2, price:0, remark:"")
Detail.create!(order:@o, product:@p2, qty:3, price:0, remark:"")
Detail.create!(order:@o1, product:@p3, qty:4, price:120, remark:"")
Detail.create!(order:@o1, product:@p4, qty:5, price:1230, remark:"")
Detail.create!(order:@o1, product:@p5, qty:6, price:5230, remark:"")
Detail.create!(order:@o2, product:@p4, qty:7, price:0, remark:"")
Detail.create!(order:@o2, product:@p3, qty:8, price:0, remark:"")
Detail.create!(order:@o2, product:@p2, qty:9, price:0, remark:"")
Detail.create!(order:@o2, product:@p1, qty:10, price:0, remark:"")
