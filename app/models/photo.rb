class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: '200x200#' }

  belongs_to :event

  validates_attachment_content_type :image,
    content_type: %w(image/jpg image/jpeg image/png)
  validates :name, presence: true
end
