class PostCategory < ActiveRecord::Base
  attr_accessible :name

  def to_param
  	name
  end
end
