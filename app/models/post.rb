class Post < ActiveRecord::Base
   attr_accessible :title, :description, :annotation, :photos_attributes, :onmain

   validates :title, presence: true
   validates :description, presence: true
   validates :annotation, presence: true

   has_many :photos, :dependent => :destroy

   accepts_nested_attributes_for :photos, :allow_destroy => true
end
