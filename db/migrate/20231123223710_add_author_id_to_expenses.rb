class AddAuthorIdToExpenses < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses, :author_id, :integer
  end
end
