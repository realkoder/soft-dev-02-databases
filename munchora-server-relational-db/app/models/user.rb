class User < ApplicationRecord

  # For manual signup (no provider), password must be present on create
  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }, if: -> { provider.blank? }, on: :create


  # Dont want to return password_digest
  def as_json(options = {})
    super({ except: [:password_digest] }.merge(options))
  end
end
