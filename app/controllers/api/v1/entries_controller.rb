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
    # binding.pry
    entry = Entry.new(entry_params)

    if entry.save
      render json: entry, include: [:keywords]
    else
      render json: {error: "issue saving entry"}, status: 400
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
