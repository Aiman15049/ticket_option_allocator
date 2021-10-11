class PurchasesController < ActionController::API
  def create
    data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
    ticket_option = TicketOption.find(params[:ticket_option_id])
    @purchase = ticket_option.purchases.new(data)
    puts @purchase
    puts 'byuv'
    if @purchase.save!
      puts @purchase
      render json: @purchase
    else
      puts @purchase
      render json: {"error": @purchase.errors}
    end
  end

  def index
    @ticket = TicketOption.find(params['ticket_option_id'])
    response = {:purchases => @ticket.purchases.map { |purchase| PurchaseSerializer.new(@ticket.purchases).to_json}}
    render json: response
  end

  def create
    @purchase = Purchase.new(purchase_params)
  end

  private

  def purchase_params
    params.require(:purchase).permit(
      :id,
      :ticket_option_id,
      :quantity,
      :user_id
    )
  end

  def json_payload
    HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  end
end
