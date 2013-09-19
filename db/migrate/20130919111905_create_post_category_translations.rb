class CreatePostCategoryTranslations < ActiveRecord::Migration
  def up
    PostCategory.create_translation_table!({
      name: :string,
    }, {
      migrate_data: true
    })
  end

  def down
    PostCategory.drop_translation_table! migrate_data: true
  end
end
