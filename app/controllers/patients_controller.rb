class PatientsController < ApplicationController
  include JwtToken
  skip_before_action :authenticate_user, only: [:create, :sessionshow]
  #rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from JWT::VerificationError, with: :invalid_token
  rescue_from JWT::DecodeError, with: :decode_error
  # before_action :authorize, only: [:show, :index, :sessionshow]
  #skip_before_action :authorize, only: [:show, :index, :create, :sessionshow]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
      if params[:doctor_id]
        doctor = Doctor.find(params[:doctor_id])
        patient = doctor.patients
      else
        patient=Patient.all
      end
        render json: patient.to_json(except: [:created_at, :updated_at, :username,:password_digest])
    end
    
    def create
     @newpatient = Patient.create(patient_params)
      if @newpatient.valid?
        token = JsonWebToken.encode(user_id: @newpatient.id)
        time = Time.now + 2.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), email: @newpatient.email, patient: @newpatient }, status: :ok
      else
        render json: { error: patient.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      patient = Patient.find(params[:id])
      patient.update!(patient_params)
      render json: patient.to_json(except: [:created_at, :updated_at, :password_digest])
    end

    def destroy
      patient = Patient.destroy(params[:id])
      render json: {message: "Patient deleted"}
    end

    def show
      patient = Patient.find_by(id: session[:meuser_id])
      render json: patient.to_json(except: [:created_at, :updated_at, :password_digest], include: [comment: {except: [:created_at, :updated_at]}]) 
    end

    def sessionshow
        header = request.headers['Authorization']
        if header
            header = header.split(' ').last
            @decoded = jwt_decode(header)
            @current_patient = Patient.find(@decoded[:user_id])
            if @current_patient
               render json: @current_patient.to_json(except: [:created_at, :updated_at, :password_digest], include: [comment: {except: [:created_at, :updated_at]}])
            else            
               render json: { errors: ["Not authorized"] }, status: :unauthorized
            end
      end
    end  
    private
    def patient_params
      params.permit(:first_name, :last_name, :username, :email, :contact_number, :clinic_location, :role, :password, :password_confirmation, :doctor_id, :patient, :id)
    end

    def render_not_found
      render json: { error: "Patient is not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
