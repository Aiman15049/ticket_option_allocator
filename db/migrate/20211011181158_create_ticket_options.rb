class CreateTicketOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_options do |t|
      t.string :name
      t.text :desc
      t.integer :allocation
      t.timestamps
    end
  end
end
