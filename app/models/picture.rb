class Picture < ApplicationRecord
  has_attached_file :image
  validates_attachment_content_type :logo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :campaign
end
