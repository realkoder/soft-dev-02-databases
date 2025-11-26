class Document::Feedback
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: 'feedbacks'

  field :name, type: String
  field :email, type: String
  field :message, type: String
  field :category, type: String

  CATEGORIES = %w[bug features general interface recipes].freeze

  validates :name, presence: true, length: { minimum: 1, maximum: 60 }
  validates :email, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :category, presence: true,
            length: { maximum: 40 },
            inclusion: { in: CATEGORIES, message: '%{value} is not a valid category' }
  validates :message, presence: true, length: { maximum: 2000 }
end
