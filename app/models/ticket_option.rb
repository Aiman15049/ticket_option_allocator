# frozen_string_literal: true

# TicketOption model
class TicketOption < ApplicationRecord
  has_many :purchases
  validates :allocation, numericality: { greater_than_or_equal_to: 0 }
end
