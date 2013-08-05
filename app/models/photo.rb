class Photo < ActiveRecord::Base
  attr_accessible :image, :post_id, :onmain, :name, :portfolio, :fullwidth

  mount_uploader :image, ImageUploader
  
  belongs_to :post
end
