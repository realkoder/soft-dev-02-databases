require 'rails_helper'

# =============================================================================
# USER MODEL SPECIFICATION
# =============================================================================
# This spec implements comprehensive testing strategies combining:
# - BLACK-BOX TESTING: Testing without knowledge of internal implementation
# - WHITE-BOX TESTING: Testing with knowledge of internal code structure
#
# Using tags to make it easier to only run specific test:
#   - 'bundle exec rspec spec/models/user_spec.rb --format documentation --tag email_context'
# =============================================================================

RSpec.describe User, type: :model do
  # ============
  # VALIDATIONS
  # ============
  describe "validations" do
    let(:valid_attributes) do
      {
        email: "john@example.com",
        first_name: "John",
        last_name: "Doe",
        password: "secure123",
        provider: nil,
        uid: nil,
        bio: "Loves food.",
        image_src: "https://example.com/avatar.jpg"
      }
    end

    # ============
    # EMAIL
    # ============
    context 'email', :email_context do
      context 'valid cases' do
        [
          # Valid email partition 6-100
          { email: 'u@t.dk' }, # valid lower
          { email: 'u1@t.dk' }, # +1 char
          { email: 'johnUser_232@test.dk' }, # valid middle
          { email: "#{'a' * 87}@example.com" }, # -1 char from valid upper
          { email: "#{'a' * 88}@example.com" } # valid upper
        ].each do |example|
          it "accepts valid email with length #{example[:email].size}" do
            user = User.new(valid_attributes.merge(email: example[:email]))
            expect(user).to be_valid
          end
        end
      end

      context "invalid cases" do
        [
          # Invalid email partition 0 - 6: lower boundary
          { email: '' },
          { email: 't' }, # +1 char
          { email: 't.d' }, # middle value
          { email: "u@t.d" }, # -1 char from valid lower boundary

          # Invalid email partition 6-100: upper boundary
          { email: "#{'a' * 89}@example.com" }, # +1 char
          { email: "#{'a' * 200}@example.com" }, # middle boundary
        ].each do |example|
          it "rejects invalid email with length #{example[:email].size}" do
            user = User.new(valid_attributes.merge(email: example[:email]))
            expect(user).to_not be_valid
          end
        end
      end
    end

    # ============
    # FIRST_NAME
    # ============
    context 'first_name', :first_name_context do
      context 'valid cases' do
        [
          # Valid first_name partition 2-60
          { first_name: 'Jo' }, # valid lower
          { first_name: 'Joe' }, # +1 char
          { first_name: 'Rasputin' }, # valid middle
          { first_name: "A" * 59 }, # -1 char from valid upper
          { first_name: "A" * 60 } # valid upper
        ].each do |example|
          it "accepts valid first_name with length #{example[:first_name].size}" do
            user = User.new(valid_attributes.merge(first_name: example[:first_name]))
            expect(user).to be_valid
          end
        end
      end

      context "invalid cases" do

      end
    end

    # ============
    # LAST_NAME
    # ============
    context 'last_name' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

    # ============
    # BIO
    # ============
    context 'bio' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

    context 'uid' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

    context 'provider' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

    context 'password' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

    context 'image_src' do
      context 'valid cases' do

      end

      context "invalid cases" do

      end
    end

  end

  describe "associations" do
    it { should have_many(:grocery_lists).with_foreign_key(:owner_id).dependent(:destroy) }
    it { should have_many(:grocery_list_shares).dependent(:destroy) }
    it { should have_many(:recipes).dependent(:destroy) }
    it { should have_many(:llm_usages) }
    it { should have_many(:shared_grocery_lists).through(:grocery_list_shares).source(:grocery_list) }
  end

  describe 'methods' do

    describe "#as_json" do
      it "does not include password_digest" do
        user = User.create!(id: SecureRandom.uuid, email: "secure@example.com", first_name: "Test", last_name: "Doe", password: "secure123")
        json = user.as_json
        expect(json).not_to have_key("password_digest")
      end
    end

  end
end
