class AddPortfolioToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :portfolio, :boolean
  end
end
