class AddAccountNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :account_number, :integer
  end
end
