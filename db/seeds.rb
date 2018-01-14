@user = User.create(email: "test@test.com", 
                    password: "testtest", 
                    password_confirmation: "testtest", 
                    first_name: "Billy", 
                    last_name: "Goat",
                    phone: "9018304494")

puts "1 User Created"

AdminUser.create(email: "admin@test.com", 
                  password: "testtest", 
                  password_confirmation: "testtest", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "9018304494")

puts "1 Admin User Created"

100.times do |post|
  Post.create!(date: Date.today, 
                rationale: "#{post} rationale content", 
                user_id: @user.id, 
                overtime_request: 2.5)
end

puts "100 posts has been created"
