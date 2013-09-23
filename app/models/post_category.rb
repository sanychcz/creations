class PostCategory < ActiveRecord::Base
  attr_accessible :name

  translates :name

  def to_param
    name
  end
end
