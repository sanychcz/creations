class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :image

  mount_uploader :image, ImageUploader
  
  belongs_to :post
end
