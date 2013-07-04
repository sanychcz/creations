class Post < ActiveRecord::Base
   attr_accessible :title, :description, :image

   mount_uploader :image, ImageUploader

   validates :title, presence: true
   validates :description, presence: true
   validates :image, presence: true
end
