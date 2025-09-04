require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "is valid with all required fields" do
      user = User.new(email: "test@example.com", fullname: "Jane Doe", password: "securepass")
      expect(user).to be_valid
    end

    it "is invalid without email when provider is blank" do
      user = User.new(fullname: "Jane", password: "securepass")
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is valid without email if provider is present" do
      user = User.new(provider: "apple", uid: "abc123", fullname: "John", password: "")
      expect(user).to be_valid
    end

    it "is invalid with short password for manual signup" do
      user = User.new(email: "test@example.com", fullname: "Test", password: "123")
      expect(user).not_to be_valid
    end

    it "is valid without password if provider is present" do
      user = User.new(provider: "apple", uid: "uid123", fullname: "OAuth User")
      expect(user).to be_valid
    end
  end

  describe "associations" do
    it { should have_many(:grocery_lists).with_foreign_key(:owner_id).dependent(:destroy) }
    it { should have_many(:grocery_list_shares).dependent(:destroy) }
    it { should have_many(:recipes).dependent(:destroy) }
    it { should have_many(:llm_usages) }
    it { should have_many(:shared_grocery_lists).through(:grocery_list_shares).source(:grocery_list) }
  end

  describe "#as_json" do
    it "does not include password_digest" do
      user = User.create!(id: SecureRandom.uuid, email: "secure@example.com", fullname: "Test", password: "secure123")
      json = user.as_json
      expect(json).not_to have_key("password_digest")
    end
  end
end
