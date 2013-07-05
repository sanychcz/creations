class AddAnnotationToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :annotation, :string
  end
end
