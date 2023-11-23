class RemoveExpensesCategories < ActiveRecord::Migration[7.1]
  def change
    drop_table :expenses_categories
  end
end
