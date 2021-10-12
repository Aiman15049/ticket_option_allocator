# frozen_string_literal: true

# Purchase model
class Purchase < ApplicationRecord
  belongs_to :ticket_option
  validate :ticket_option_validation

  def ticket_option_validation
    if new_record? && ticket_option.purchases.sum(:quantity) >= ticket_option.allocation
      errors.add(:quantity, 'Ticket option allocation')
    else
      puts 'CANNOT DO THIS'
    end
  end
end
