require "jwt"

module JwtToken
  extend ActiveSupport::Concern
  SECRET_KEY = Rails.application.secrets.secret_key_base
  
  def jwt_encode(payload, exp: 2.hours.from_now) 
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)   
  end

  def jwt_decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  rescue JWT::ExpiredSignature, JWT::VerificationError => e
    raise ExceptionHandler::ExpiredSignature, e.message
  rescue JWT::DecodeError, JWT::VerificationError => e
    raise ExceptionHandler::DecodeError, e.message
  end
end



