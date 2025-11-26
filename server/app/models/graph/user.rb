class Graph::User
  include ActiveGraph::Node
  include ActiveGraph::Timestamps
  include ActiveModel::SecurePassword

  self.mapped_label_name = 'User'

  # Properties
  id_property :id, auto: :uuid
  property :email, type: String
  property :first_name, type: String
  property :last_name, type: String
  property :bio, type: String
  property :uid, type: String
  property :provider, type: String
  property :password_digest, type: String
  property :image_src, type: String

  # Relationships
  has_many :out, :recipes, type: :CREATED_BY, dependent: :destroy, model_class: 'Graph::Recipe'
  has_many :out, :llm_usages, type: :HAS_LLM_USAGE, model_class: 'Graph::LlmUsage'
  has_many :in, :owned_grocery_lists, type: :CREATED_BY, model_class: 'Graph::GroceryList', dependent: :destroy
  has_many :in, :shared_grocery_lists, type: :CAN_ACCESS, model_class: 'Graph::GroceryList'

  # Validations
  validates :email,
            presence: true,
            length: { minimum: 4, maximum: 100 },
            uniqueness: true,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            if: -> { provider.blank? }

  validates :first_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :bio, length: { maximum: 2000 }, allow_blank: true

  validates :uid, presence: true, if: -> { provider.present? }
  validates :provider, presence: true, if: -> { uid.present? }

  # Password handling
  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }, if: -> { provider.blank? }, on: :create

  validates :image_src, length: { minimum: 6, maximum: 400 },
            format: URI::DEFAULT_PARSER.make_regexp(%w[http https]),
            allow_blank: true

  # JSON serialization
  def as_json(options = {})
    base_options = {
      except: [:email, :password_digest],
      root: false
    }.merge(options)
    attributes = super(base_options)
    attributes.merge('fullname' => "#{first_name} #{last_name}")
  end
end
