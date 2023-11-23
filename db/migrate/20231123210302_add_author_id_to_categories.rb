class AddAuthorIdToCategories < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :author, null: false, foreign_key: false
  end
end
