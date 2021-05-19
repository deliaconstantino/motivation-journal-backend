require 'pry'

class Api::V1::QuotesController < ApplicationController
  def index
    quotes = Quote.all

    render json: quotes, status: 200
  end

  def show
    if params[:id] == "random"
      quote = Quote.random
    end

    render json: quote, status: 200
  end
end
