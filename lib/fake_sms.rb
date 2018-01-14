module FakeSms
  Message = Struct.new(:message, :message)
  @messages = []

  def self.send_sms(number:, message:)
    @messages << Message.new(number, message)
  end

  def self.messages
    @messages
  end
end


# RSPEC error occured during the "Adding a Phone Number to Users with Validations" video