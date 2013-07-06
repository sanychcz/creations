class AddOnmainToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :onmain, :boolean,  default: false
  end
end
