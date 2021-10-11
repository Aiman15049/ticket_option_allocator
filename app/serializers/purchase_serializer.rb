include ActiveModel::Serialization
class PurchaseSerializer < ActiveModel::Serializer

  attributes :id, :quantity, :ticket_option_id

  def model_name
    Purchase
  end
end
