class CreateExpensesCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses_categories do |t|

      t.timestamps
    end
  end
end
