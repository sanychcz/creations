class Work < ActiveRecord::Base
 
  has_many :posts, :dependent => :destroy

  scope :latest, -> { Post.recent }
end
