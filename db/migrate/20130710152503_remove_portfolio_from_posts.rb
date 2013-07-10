class RemovePortfolioFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :portfolio, :boolean
  	add_column :photos, :portfolio, :boolean, default: true
  end
end
