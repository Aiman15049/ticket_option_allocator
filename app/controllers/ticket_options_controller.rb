class TicketOptionsController < ActionController::API
  def create
    data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
    @ticket = TicketOption.new(data)
    if @ticket.save
      render json: @ticket
    else
      render json: {"error": "could not create it"}
    end
  end

  def index
    @tickets = TicketOption.all
    render json: @tickets
  end

  def show
    @ticket = TicketOption.find(ticket_options_params[:id])
    render json: @ticket
  end

  private

  def json_payload
    HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  end

  def ticket_options_params
    params.permit(
      :id,
      :name,
      :desc,
      :allocation
    )
  end
end
