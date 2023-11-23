class AddAmountToExpenses < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses, :amount, :decimal
  end
end
