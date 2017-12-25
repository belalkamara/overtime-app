require 'rails_helper'

RSpec.describe User, type: :model do
  before do
      @user = User.create(email: "test@test.com", password: "testtest", password_confirmation: "testtest", first_name: "Billy", last_name: "Goat")
    end

  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("GOAT, BILLY")
    end
  end
end