class AddFullwidthColumnToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :fullwidth, :boolean, default: false 
  end
end
