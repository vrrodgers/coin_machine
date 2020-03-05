class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :coin_id
      t.text :user_token

      t.timestamps
    end
  end
end
