# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Ticket Option API', type: :request do
  ## ticket_option = FactoryBot.create(:ticket_option,
  #3                                   name: 'Ticket',
  ##                                   desc: 'desc',
  ##                                   allocation: 10)
  ## purchase = FactoryBot.create(:purchase,
  ##                              ticket_option: ticket_option,
  ##                              quantity: 2,
  ##                              user_id: '1234-ABCD')
  ##
  ## describe 'POST /ticket_options/:id/purchases' do
  ##   it 'returns a 200 success code' do
  ##    post("/ticket_options/#{ticket_option.id}/purchases")
  ##     expect(response).to have_http_status(200)
  ##   end
  ##
  ##   it 'purchases a quantity of tickets' do
  ##     expect {
  ##       post "/ticket_options/#{ticket_option.id}/purchases",
  ##       params: { ticket_option: {id: ticket_option.id,
  ##                                 purchase: {
  ##                                   quantity: purchase.quantity,
  ##                                  user_id: purchase.user_id
  ##                                 }}}
  ##     }.to change { Purchase.count }.by(1)
  ##   end
  ## end
end
