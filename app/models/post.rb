class Post < ActiveRecord::Base
   attr_accessible :title, :description, :annotation

   validates :title, presence: true
   validates :description, presence: true
   validates :image, presence: true
   validates :annotation, presence: true

   has_many :photos
end
