class Film < ApplicationRecord
  has_attached_file :video
  validates_attachment_content_type :video, content_type: ["video/mp4", 'video/avi']

  belongs_to :campaign
end


