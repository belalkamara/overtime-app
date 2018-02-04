namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://bk-overtime.herokuapp.com/"
      
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(message: notification_message, number: employee.phone)
      end
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
