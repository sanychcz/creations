class Post < ActiveRecord::Base
   attr_accessible :title, :description, :annotation, :photos_attributes, :onmain, :name, :year, :post_category,
                   :year, :industry, :subtitle, :task, :work_id, :portfolio, :fullwidth

   validates :title, presence: true
   validates :description, presence: true
   validates :annotation, presence: true
   

   has_many :photos, :dependent => :destroy
   belongs_to :work

   accepts_nested_attributes_for :photos, :allow_destroy => true

   before_save { |post| post.industry = industry.upcase }
   before_save { |post| post.task = task.upcase }

   scope :recent, order("created_at desc").limit(4)
end
