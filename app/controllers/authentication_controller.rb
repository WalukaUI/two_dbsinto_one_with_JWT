#require 'jwt' 
class AuthenticationController < ApplicationController
  include JwtToken
  skip_before_action :authenticate_user
  
  def login
    if params[:patient]   
      @patient = Patient.find_by_email(params[:email])
      if @patient&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @patient.id)
        time = Time.now + 2.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), email: @patient.email, patient: @patient }, status: :ok
      else
        render json: {error: 'unauthorized patient' }, status: :unauthorized
      end

    elsif params[:doctor]
      @doctor = Doctor.find_by_email(params[:email])
      if @doctor&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @doctor.id)
        time = Time.now + 2.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), email: @doctor.email, doctor: @doctor }, status: :ok
      else
        render json: {error: 'unauthorized doctor' }, status: :unauthorized
      end
    elsif params[:user]
      @user = User.find_by_email(params[:email])
      if user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 2.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), email: @user.email, user: @user }, status: :ok
      else
        render json: {error: 'unauthorized user' }, status: :unauthorized
      end
    end
  end
end
