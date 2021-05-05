class Api::V1::EntriesController < ApplicationController
  def index
    entries = Entry.all

    render json: entries, status: 200
  end

  def show
    entry = Entry.find(params[:id])

    render json: entry, status: 200
  end

  def destroy
    entry = Entry.find(params[:id])

    entry.delete

    render json: {entryId: entry.id}
  end
end
