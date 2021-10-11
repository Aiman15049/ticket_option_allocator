class AddTicketOptionIdToPurchases < ActiveRecord::Migration[6.1]
  def change
    change_table :purchases do |t|
      t.belongs_to :ticket_option
    end
  end
end
