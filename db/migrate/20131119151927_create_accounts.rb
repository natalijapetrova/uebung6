class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :customer_id
      t.decimal :number
      t.decimal :balance

      t.timestamps
    end
  end
end
