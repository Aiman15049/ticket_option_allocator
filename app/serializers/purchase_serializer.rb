# frozen_string_literal: true

# Purchase Serializer
class PurchaseSerializer < ActiveModel::Serializer
  attributes :user_id, :quantity
end
