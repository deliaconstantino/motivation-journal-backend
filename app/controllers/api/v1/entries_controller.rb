require 'pry'

class Api::V1::EntriesController < ApplicationController
  def index
    if params[:q]
      if !params[:q].empty?
        query = params[:q].downcase.strip
        keyword = Keyword.find_by(name: query)
        entries = keyword.entries
      else
        entries = []
      end
    else
      entries = Entry.all
    end

    render json: entries, include: [:keywords]
    # status: 200
  end

  def show
    entry = Entry.find(params[:id])

    render json: entry, status: 200
  end

  def create
    entry = Entry.new(entry_params)

    if entry.save
      render json: entry, include: [:keywords]
    else
      # render json: {message: entry.errors.full_messages }, status: 400
      render json: entry.errors.full_messages, status: :unprocessable_entity #TODO: specific errors don't make it to front end

    end
  end

  def destroy
    entry = Entry.find(params[:id])

    entry.destroy

    render json: {entryId: entry.id}
  end

  private

  def entry_params
    params.require(:entry).permit(:body, :time_interval, :keywords_attributes => :name)
  end

end
