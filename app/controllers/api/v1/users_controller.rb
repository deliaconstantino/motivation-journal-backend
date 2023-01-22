require 'pry'
class Api::V1::UsersController < ApplicationController
  # before_action :authorized, except: [:create]

  def create
    user = User.new(user_params)
    if user.save
      token = token(user.id)
      render json: {user: user, jwt: token}, status: 200
    else
      render json: {errors: user.errors.full_messages}, status: 400
    end
  end

  # def profile
  #   binding.pry
  #   current_user_value = current_user()

  #   if current_user_value
  #     render json: {user: current_user_value}, status: 200
  #   end
  # end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
