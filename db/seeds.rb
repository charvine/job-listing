# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  puts "這個種子檔會自動建立一個帳號, 並且創建 10 個 jobs"

create_account = User.create([email: 'admin@gmail.com', password: '111111', password_confirmation: '111111', :is_admin => true])


  create_workers = for i in 1..5 do
                    Job.create!([title: "编程小白#{i}號", description: "累了就睡", wage_lower_bound: "#{i*1000}", wage_upper_bound: "#{i*2000}"])

                  end
Job.create!([title: "战神", description: "當老大", wage_lower_bound: "#{50000}",
 wage_upper_bound: "#{100000}"])

 Job.create!([title: "VP", description: "當老二", wage_lower_bound: "#{30000}",
  wage_upper_bound: "#{70000}"])

  create_managers = for i in 1..3 do
                    Job.create!([title: "第#{i}部門經理", description: "罵人的", wage_lower_bound: "#{i*1}", wage_upper_bound: "#{i*20000}"])

                  end
