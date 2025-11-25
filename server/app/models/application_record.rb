class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  self.abstract_class = true

  # ActiveRecord will scan for models in namespace Relational module as their parent
  def self.module_parent
    Relational
  end
end
