namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
    # 1. Schedule to run every Sunday at 5pm
    # 2. Iterate over all emloyees but skip admin users
    # 3. Send a message that has instructions that has a link to log time
    
    # User.all.each do |user|
    #   SmsTool.send_sms(message: number:)
    # end
  end

end
