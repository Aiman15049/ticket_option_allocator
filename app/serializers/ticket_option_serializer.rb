include ActiveModel::Serialization
class TicketOptionSerializer < ActiveModel::Serializer

  attributes :id, :name, :desc, :allocation

  def model_name
    TicketOption
  end
end
