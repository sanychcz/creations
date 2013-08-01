class Photo < ActiveRecord::Base
  attr_accessible :image, :post_id, :onmain, :name, :portfolio

  mount_uploader :image, ImageUploader
  
  belongs_to :post
  belongs_to :work
end
