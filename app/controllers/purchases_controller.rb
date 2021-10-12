# frozen_string_literal: true

# Purchase Controller
class PurchasesController < ActionController::API
  def create
    purchase = ticket_option.purchases.new(purchase_params)
    if purchase.save
      render json: purchase
    else
      render json: { "error": purchase.errors }
    end
  end

  def index
    response = { purchases: ticket_option.purchases.map { |_purchase| PurchaseSerializer.new(ticket.purchases).to_json } }
    render json: response
  end

  private

  def ticket_option
    TicketOption.find(params[:ticket_option_id])
  end

  def purchase_params
    params.require(:purchase).permit(
      :id,
      :ticket_option_id,
      :quantity,
      :user_id
    )
  end
end
