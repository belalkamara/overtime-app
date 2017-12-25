@user = User.create(email: "test@test.com", password: "testtest", password_confirmation: "testtest", first_name: "Billy", last_name: "Goat")

puts "1 User Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts has been created"
