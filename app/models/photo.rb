class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: '200x200#' }

  belongs_to :event

  has_one :category, through: :event

  delegate :link, to: :category, allow_nil: true

  validates_attachment_content_type :image,
    content_type: %w(image/jpg image/jpeg image/png)
  validates :image, presence: true
end
