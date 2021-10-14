require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password) }

  # describe "validations" do
  #   it "should validate presence of email" do
  #     user = User.new
  #     expect(user.valid?).to be false
  #   end
  # end

  describe "#is_correct_password?" do
    it "should verify password is user's password" do
      user = User.new(email: "test@test.com", password: "password")
      expect(user.is_correct_password?("password")).to be true
    end
  end

  describe "#reset_session_token!" do
    it "should reset the user's session token" do
      user = User.create(email: "test@test.com", password: "password")
      old_token = user.session_token
      new_token = user.reset_session_token!
      
      expect(new_token).not_to eq old_token 
    end
  end

  describe "::find_by_credentials" do
    it "should find a user by a given email and password" do
      user = User.create(email: "test@test.com", password: "password")

      expect(User.find_by_credentials("test@test.com", "password")).to eq user
    end
  end

end
