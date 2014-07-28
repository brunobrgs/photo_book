class Category < ActiveRecord::Base
  validates :name, presence: true

  has_many :photos, dependent: :restrict_with_exception

  default_scope { order(:name) }

  def link
    name.downcase.split.join('_')
  end
end
