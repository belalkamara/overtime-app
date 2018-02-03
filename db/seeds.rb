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

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs has been created"

100.times do |post|
  Post.create!(date: Date.today, 
                rationale: "#{post} is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", 
                user_id: @user.id, 
                overtime_request: 2.5)
end

puts "100 posts has been created"