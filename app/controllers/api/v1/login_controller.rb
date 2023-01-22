class Api::V1::LoginController < ApplicationController

  def create
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      render json: { jwt: token(user.id), user_id: user.id }, status: :accepted
    else
      render json: { errors: [ "Sorry, incorrect username or password" ] }, status: 401
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
