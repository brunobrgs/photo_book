class Category < ActiveRecord::Base
  validates :name, presence: true

  default_scope { order(:name) }

  def link
    name.downcase
  end
end
