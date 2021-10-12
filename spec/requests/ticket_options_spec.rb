# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /ticket_options/:id', type: :request do
  valid_ticket_option = FactoryBot.create(:ticket_option,
                                          name: 'Ticket',
                                          desc: 'desc',
                                          allocation: 10)
  it 'returns a 200 success code' do
    get("/ticket_options/#{valid_ticket_option.id}")
    expect(response).to have_http_status(200)
  end

  it 'returns the correct name response' do
    get("/ticket_options/#{valid_ticket_option.id}")
    json = JSON.parse(response.body).deep_symbolize_keys
    expect(json[:name]).to eq('Ticket')
  end

  it 'returns the correct description response' do
    get("/ticket_options/#{valid_ticket_option.id}")
    json = JSON.parse(response.body).deep_symbolize_keys
    expect(json[:desc]).to eq('desc')
  end

  it 'returns the correct allocation response' do
    get("/ticket_options/#{valid_ticket_option.id}")
    json = JSON.parse(response.body).deep_symbolize_keys
    expect(json[:allocation]).to eq(10)
  end

  # This doesnt work because I cant create an invalid example.

  # describe 'allocation is below 0' do

  # it 'gives a 422 error if allocation is below 0' do
  #   expect
  # #   it 'is invalid if allocation is below 0' do
  # #     invalid_ticket_option = FactoryBot.create(:ticket_option,
  # #                              name: 'Ticket',
  # #                              desc: 'desc',
  # #                              allocation: -1)
  #       post('/ticket_options')
  #       expect(response).to raise_error(ActiveRecord::RecordInvalid,
  #       #   'Validation failed: Allocation must be greater than or equal to 0')
  # #
  # #   end
  # # end

  ## describe 'POST /ticket_options' do
  ##  it 'returns a 201 success code' do
  ##     post('/ticket_options')
  ##     expect(response).to have_http_status(200)
  ##   end

    ## For some reason doesnt work?

    ## it 'creates a new ticket option' do
    ##   expect {
    ##     post '/ticket_options', params: {
    ##      ticket_option: {
    ##       name: 'name',
    ##        desc: 'desc',
    ##         allocation: 10
    ##       }
    ##     }
    ##   }.to change { TicketOption.count }.by(1)
    # end
end
