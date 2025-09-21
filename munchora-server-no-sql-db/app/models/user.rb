class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :provider, type: String
  field :uid, type: String
  field :password_digest, type: String
  field :image_src, type: String
  field :bio, type: String
  field :last_signed_in_at, type: Time

  # Owned grocery lists
  has_many :grocery_lists, class_name: "GroceryList", foreign_key: :owner_id, inverse_of: :owner

  # Lists shared with this user
  has_and_belongs_to_many :shared_grocery_lists,
                          class_name: "GroceryList",
                          inverse_of: :shared_users

  # Virtual attribute for password confirmation (not persisted)
  attr_accessor :password, :password_confirmation

  # Add these requires at the top of your file or in config/application.rb
  require 'bcrypt'
  include BCrypt

  # Password authentication methods
  def password=(new_password)
    if new_password.present?
      self.password_digest = Password.create(new_password)
    end
  end

  def authenticate(password)
    Password.new(password_digest) == password if password_digest.present?
  end

  # Validations
  validates :email, presence: true, length: { minimum: 4, maximum: 100 }, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }, if: -> { provider.blank? }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :bio, length: { maximum: 2000 }, allow_blank: true

  # OAuth validations
  validates :uid, presence: true, if: -> { provider.present? }
  validates :provider, presence: true, if: -> { uid.present? }

  # Password validation
  validate :password_presence, if: -> { provider.blank? }
  validate :password_length, if: -> { provider.blank? && password.present? }

  # URL validation
  validates :image_src, length: { minimum: 6, maximum: 400 }, format: URI.regexp(%w[http https]), allow_blank: true

  # Indexes
  index({ email: 1 }, { unique: true, name: "email_index" })
  index({ provider: 1, uid: 1 }, { name: "oauth_index" })

  def as_json(options = {})
    super({ except: [:email, :password_digest] }.merge(options)).merge(
      'fullname' => "#{first_name} #{last_name}" # client relies on attribute fullname instead of first_name / last_name
    )
  end

  private

  def password_presence
    errors.add(:password, "can't be blank") if password_digest.blank?
  end

  def password_length
    errors.add(:password, "is too short (minimum is 6 characters)") if password.length < 6
    errors.add(:password, "is too long (maximum is 50 characters)") if password.length > 50
  end
end