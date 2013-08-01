class AddColumnsToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :post_category, :string
  	add_column :posts, :year, :integer
  	add_column :posts, :industry, :string
  	add_column :posts, :subtitle, :string
  	add_column :posts, :task, :string
  end
end
