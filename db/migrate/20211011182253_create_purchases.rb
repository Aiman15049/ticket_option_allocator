# frozen_string_literal: true

# CreatePurchases
class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :user_id
      t.integer :quantity

      t.timestamps
    end
  end
end
