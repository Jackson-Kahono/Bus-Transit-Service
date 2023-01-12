class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :amount
      t.string :transaction_id

      t.timestamps
    end
  end
end
