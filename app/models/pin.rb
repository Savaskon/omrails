class Pin < ActiveRecord::Base
  attr_accessible :description, :image
  attr_accessor :image
  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment_presence  :image
  validates_attachment_size :image, less_than: 5.megabytes
  validates_attachment_content_type :image, content_type:['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] 

  belongs_to :user
  has_attached_file :image, styles: {medium: "320x300>"}
end