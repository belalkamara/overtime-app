namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
    if Time.now.sunday?
      # 1. Schedule to run every Sunday at 5pm
      # 2. Iterate over all emloyees but skip admin users
      # 3. Send a message that has instructions that has a link to log time
      
      # User.all.each do |user|
      #   SmsTool.send_sms(message: number:)
      # end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime request"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
