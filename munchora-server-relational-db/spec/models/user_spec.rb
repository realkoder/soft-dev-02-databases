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
  describe 'validations' do
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
      [
        # Invalid email partition 0 - 6: lower boundary
        { email: '', is_valid: false },
        { email: 't', is_valid: false }, # +1 char
        { email: 't.d', is_valid: false }, # middle value
        { email: 'u@t.d', is_valid: false }, # -1 char from valid lower boundary

        # Valid email partition 6-100
        { email: 'u@t.dk', is_valid: true }, # valid lower
        { email: 'u1@t.dk', is_valid: true }, # +1 char
        { email: 'johnUser_232@test.dk', is_valid: true }, # Equivalence partition
        { email: "#{'a' * 87}@example.com", is_valid: true }, # -1 char from valid upper
        { email: "#{'a' * 88}@example.com", is_valid: true }, # valid upper

        # Invalid email partition 6-100: upper boundary
        { email: "#{'a' * 89}@example.com", is_valid: false }, # +1 char
        { email: "#{'a' * 450}@example.com", is_valid: false } # Equivalence partition
      ].each do |example|
        it "#{example[:is_valid] ? 'accepts ' : 'rejects in'}valid email with length #{example[:email].size}" do
          user = User.new(valid_attributes.merge(email: example[:email]))
          example[:is_valid] ? (expect(user).to be_valid) : (expect(user).to_not be_valid)
        end
      end
    end

    # ============
    # FIRST_NAME
    # ============
    context 'first_name', :first_name_context do
      [
        # Invalid first_name partition 0-2
        { first_name: '', is_valid: false }, # invalid lower
        { first_name: 'J', is_valid: false }, # +1 char

        # Valid first_name partition 2-60
        { first_name: 'Jo', is_valid: true }, # valid lower
        { first_name: 'Joe', is_valid: true }, # +1 char
        { first_name: 'Maximilian', is_valid: true }, # Equivalence partition
        { first_name: 'A' * 59, is_valid: true }, # -1 char from valid upper
        { first_name: 'A' * 60, is_valid: true }, # valid upper

        # Invalid first_name partition < 60
        { first_name: 'A' * 61, is_valid: false }, # +1 char
        { first_name: 'A' * 200, is_valid: false } # Equivalence partition
      ].each do |example|
        it "#{example[:is_valid] ? 'accepts ' : 'rejects in'}valid first_name with length #{example[:first_name].size}" do
          user = User.new(valid_attributes.merge(first_name: example[:first_name]))
          example[:is_valid] ? (expect(user).to be_valid) : (expect(user).to_not be_valid)
        end
      end
    end

    # ============
    # LAST_NAME
    # ============
    context 'last_name', :last_name_context do
      [
        # Invalid last_name partition 0-2
        { last_name: '', is_valid: false }, # invalid lower
        { last_name: 'O', is_valid: false }, # +1 char

        # Valid last_name partition 2-60
        { last_name: 'Li', is_valid: true }, # valid lower
        { last_name: 'Lee', is_valid: true }, # +1 char
        { last_name: 'Wolfeschlegelsteinhausenbergerdorff', is_valid: true }, # Equivalence partition
        { last_name: 'A' * 59, is_valid: true }, # -1 char from valid upper
        { last_name: 'A' * 60, is_valid: true }, # valid upper

        # Invalid last_name partition > 60
        { last_name: 'A' * 61, is_valid: false }, # +1 char
        { last_name: 'A' * 200, is_valid: false } # Equivalence partition
      ].each do |example|
        it "#{example[:is_valid] ? 'accepts ' : 'rejects in'}valid last_name with length #{example[:last_name].size}" do
          user = User.new(valid_attributes.merge(last_name: example[:last_name]))
          example[:is_valid] ? (expect(user).to be_valid) : (expect(user).to_not be_valid)
        end
      end
    end

    # ============
    # BIO
    # ============
    context 'bio', :bio_context do
      [
        # Valid bio partition 0 - 2_000
        { bio: '', is_valid: true }, # valid lower
        { bio: 'A', is_valid: true }, # +1 char
        { bio: 'I like AI food' * 15, is_valid: true }, # Equivalence partition
        { bio: 'a' * 1_999, is_valid: true }, # -1 char from valid upper
        { bio: 'a' * 2_000, is_valid: true }, # valid upper

        # Invalid bio partition > 2_000
        { bio: 'a' * 2_001, is_valid: false }, # +1 char
        { bio: 'I like AI food' * 500, is_valid: false } # Equivalence partition
      ].each do |example|
        it "#{example[:is_valid] ? 'accepts ' : 'rejects in'}valid bio with length #{example[:bio].size}" do
          user = User.new(valid_attributes.merge(bio: example[:bio]))
          example[:is_valid] ? (expect(user).to be_valid) : (expect(user).to_not be_valid)
        end
      end
    end

    # ============
    # UID
    # ============
    context 'uid', :uid_context do
    end

    # ============
    # PROVIDER
    # ============
    context 'provider', :provider_context do
    end

    # ============
    # PASSWORD
    # ============
    context 'password', :password_context do
    end

    # ============
    # IMAGE_SRC
    # ============
    context 'image_src', :image_src_context do
    end
  end

  describe 'associations' do
    it { should have_many(:grocery_lists).with_foreign_key(:owner_id).dependent(:destroy) }
    it { should have_many(:grocery_list_shares).dependent(:destroy) }
    it { should have_many(:recipes).dependent(:destroy) }
    it { should have_many(:llm_usages) }
    it { should have_many(:shared_grocery_lists).through(:grocery_list_shares).source(:grocery_list) }
  end

  describe 'methods' do
    describe '#as_json' do
      it 'does not include password_digest' do
        user = User.create!(id: SecureRandom.uuid, email: 'secure@example.com', first_name: 'Test', last_name: 'Doe', password: 'secure123')
        json = user.as_json
        expect(json).not_to have_key('password_digest')
      end
    end
  end
end
