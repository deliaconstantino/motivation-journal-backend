require 'pry'
class ApplicationController < ActionController::API
  before_action :require_login, except: [:create]

  private
  def token(user_id)
    payload = { user_id: user_id }
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def hmac_secret
    ENV["JWT_SECRET"]
  end

  def client_has_valid_token?
    !!current_user_id
  end

  def current_user_id
    begin
      bearer_token = request.headers["Authorization"]
      token_val = bearer_token.split(" ")[1]
      decoded_array = JWT.decode(token_val, hmac_secret, true, { algorithm: 'HS256' })
      payload = decoded_array.first
    rescue => e #JWT::VerificationError
      return nil
    end
    payload["user_id"]
  end

  def require_login
    user_found = client_has_valid_token?

    render json: {error: 'Unauthorized'}, status: :unauthorized if !client_has_valid_token?
  end
end
