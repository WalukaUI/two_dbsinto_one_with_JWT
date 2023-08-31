class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
    def create
        if params[:patient]
          @patient = Patient.find_by(email: params[:email])
          if @patient&.authenticate(params[:password])
            session[:user_id] = @patient.id
            render json: @patient, status: :created
          else
            render json: { error: "Invalid email or password" }, status: :unauthorized
          end
        elsif params[:doctor]
          @doctor = Doctor.find_by(email: params[:email])
          if @doctor&.authenticate(params[:password])
            session[:user_id] = @doctor.id
            render json: @doctor, status: :created
          else
            render json: { error: "Invalid email or password" }, status: :unauthorized
          end
        elsif params[:user]
          user = User.find_by(name: params[:name])
          if user&.authenticate(params[:password])
             session[:user_id] = user.id
             render json: user, status: :created
          else
             render json: { error: "Invalid name or password" }, status: :unauthorized
          end
        end
    end

    def destroy
        session.delete :user_id
        render json: {message: "deleted"}
        head :no_content
    end
end
