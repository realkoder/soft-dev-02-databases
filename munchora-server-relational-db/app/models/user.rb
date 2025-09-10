class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :llm_usages

  validates :email, presence: true, length: { minimum: 4, maximum: 100 }, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }, if: -> { provider.blank? }

  validates :first_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :bio, presence: false, length: { maximum: 2000 }

  # If provider is present, uid must be present (for OAuth)
  validates :uid, presence: true, if: -> { provider.present? }
  validates :provider, presence: true, if: -> { uid.present? }

  # For manual signup (no provider), password must be present on create
  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }, if: -> { provider.blank? }, on: :create

  validates :image_src, length: { minimum: 6, maximum: 400 }, format: URI.regexp(%w[http https]), allow_blank: true

  # Dont want to return password_digest - and client relies on attribute fullname instead of first_name / last_name
  def as_json(options = {})
    super({ except: [:password_digest] }.merge(options)).merge(
      'fullname' => "#{first_name} #{last_name}"
    )
  end
end
