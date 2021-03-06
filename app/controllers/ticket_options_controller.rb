# frozen_string_literal: true

# Ticket Options Controller
class TicketOptionsController < ActionController::API
  def create
    ticket = TicketOption.new(ticket_option_params)
    if ticket.save
      render json: ticket
    else
      render json: { "error": 'could not create it' }, status: 422
    end
  end

  def index
    response = { ticket_options: TicketOption.all.map { |_ticket_option| TicketOptionSerializer.new.to_json } }
    render json: response
  end

  def show
    ticket = TicketOption.find(ticket_option_params[:id])
    render json: ticket
  end

  private

  def ticket_option_params
    params.permit(
      :id,
      :name,
      :desc,
      :allocation
    )
  end
end
