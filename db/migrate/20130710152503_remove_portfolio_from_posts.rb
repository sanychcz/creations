class RemovePortfolioFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :portfolio
  	add_column :photos, :portfolio, :boolean, default: true
  end
end
