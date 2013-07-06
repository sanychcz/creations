class Photo < ActiveRecord::Base
  
  attr_accessible :image, :post_id, :onmain

  mount_uploader :image, ImageUploader
  
  belongs_to :post
end
