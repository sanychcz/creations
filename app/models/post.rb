class Post < ActiveRecord::Base
   attr_accessible :title, :description, :annotation, :photos_attributes, :onmain, :name, :year, :post_category,
   								 :year, :industry, :subtitle, :task

   validates :title, presence: true
   validates :description, presence: true
   validates :annotation, presence: true
   validates :photo, presence: true

   has_many :photos, :dependent => :destroy

   accepts_nested_attributes_for :photos, :allow_destroy => true
end
