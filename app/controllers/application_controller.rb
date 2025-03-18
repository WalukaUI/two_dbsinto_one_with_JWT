require 'jwt'
class ApplicationController < ActionController::API
   #include ActionController::Cookies
    include JwtToken
    include ExceptionHandler
   #rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from JWT::VerificationError, with: :invalid_token
    rescue_from JWT::DecodeError, with: :decode_error
    before_action :authenticate_user

    private

    def authenticate_user
        header = request.headers['Authorization']
        if header
            header = header.split(' ').last
            @decoded = jwt_decode(header)
        end
    end

    def invalid_token
        render json: { invalid_token: 'invalid token' }
    end
 
    def decode_error
        render json: { decode_error: 'decode error' }
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
