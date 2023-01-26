require 'pry'

class Api::V1::EntriesController < ApplicationController
  # before_action :require_login

  def index
    if current_user_id
      user = User.find_by(id: current_user_id)

      if user
        render json: user.entries, status: 200
      end
    end
    # if params[:q]
    #   if !params[:q].empty?
    #     query = params[:q].downcase.strip
    #     keyword = Keyword.find_by(name: query)
    #     entries = keyword.entries
    #   else
    #     entries = []
    #   end
    # else
    #   entries = Entry.all
    # end

    # render json: entries, include: [:keywords]
  end

  def show
    entry = Entry.find(params[:id])

    render json: entry, status: 200
  end

  def create
    if current_user_id
      user = User.find_by(id: current_user_id)

      if user
        entry = user.entries.build(entry_params)

        if entry.save
          render json: entry, status: 200
        else
            render json: {errors: entry.errors.full_messages}, status: 400
        end
      end
    end
  end

  def update
    if current_user_id
      entry = Entry.find_by(id: params[:id], user_id: current_user_id)

      if entry && entry.update(entry_params)
        render json: entry, status: 200
      else
        render json: {errors: entry.errors.full_messages}, status: 400
      end
    end
  end

  def destroy
    if current_user_id
      entry = Entry.find_by(id: params[:id], user_id: current_user_id)

      entry.destroy

    render status: 204
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:body, :time_interval, :title, :keywords_attributes => :name)
  end

end
