class PostCategory < ActiveRecord::Base

  translates :name

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
