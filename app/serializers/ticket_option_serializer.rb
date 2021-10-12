# frozen_string_literal: true

#TicketOption Serializer
class TicketOptionSerializer < ActiveModel::Serializer
  attributes :name, :desc, :allocation
end
