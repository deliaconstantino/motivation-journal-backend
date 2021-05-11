require 'pry'

class Api::V1::EntriesController < ApplicationController
  def index
    entries = Entry.all

    render json: entries, status: 200
  end

  def show
    entry = Entry.find(params[:id])

    render json: entry, status: 200
  end

  def create
    entry = Entry.new(entry_params)

    if entry.save
      render json: entry
    else
      render json: {error: "issue saving entry"}, status: 400
    end
  end

  def destroy
    entry = Entry.find(params[:id])

    entry.delete

    render json: {entryId: entry.id}
  end

  private

  def entry_params
    params.require(:entry).permit(:body, :time_interval)
  end

end
