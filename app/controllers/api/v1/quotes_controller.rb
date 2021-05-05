class Api::V1::QuotesController < ApplicationController
  def index
    quotes = Quote.all

    render json: quotes, status: 200
  end

  def show
    quote = Quote.find(params[:id])

    render json: quote, status: 200
  end
end
