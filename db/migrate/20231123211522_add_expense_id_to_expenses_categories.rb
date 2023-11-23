class AddExpenseIdToExpensesCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses_categories, :expense_id, :integer
  end
end
