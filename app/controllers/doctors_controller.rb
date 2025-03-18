class DoctorsController < ApplicationController
    include JwtToken    
    skip_before_action :authenticate_user, only: [:show, :index, :create, :sessionshow]
    # before_action :authorize, only: [:show, :index, :create, :sessionshow]
    rescue_from JWT::VerificationError, with: :invalid_token
    rescue_from JWT::DecodeError, with: :decode_error
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index
        if params[:location_id]
          location = Location.find(params[:location_id])
          doctor = location.doctors
        elsif params[:patient_id]
          patient = Patient.find(params[:patient_id])
          doctor = patient.doctors
        else
          doctor = Doctor.all
        end
          render json: doctor.to_json(except: [:created_at, :updated_at, :password_digest])
    end
    
    def sessionshow
        header = request.headers['Authorization']
        if header
            header = header.split(' ').last
            @decoded = jwt_decode(header)
            @current_doc = Doctor.find(@decoded[:user_id])
            if @current_doc
               render json: @current_doc.to_json(except: [:created_at, :updated_at, :password_digest], include: [comment: {except: [:created_at, :updated_at]}])
            else
               render json: { errors: ["Not authorized"] }, status: :unauthorized
            end
         end
    end  

    def show
          #doctor = Doctor.find(params[:id])
          doctor = Doctor.find_by(id: params[:id])
          render json: doctor.to_json(except: [:created_at, :updated_at,:password_digest], include: [appointments: { except: [:created_at, :updated_at]}], include: [comment: { except: [:created_at, :updated_at]}]), status: 200
    end

    def create
      doctor = Doctor.create(doctor_params)
        if doctor.valid?
          render json: doctor.to_json(except: [:created_at, :updated_at, :password_digest]), status: :created
        else
          render json: { error: doctor.errors.full_messages }, status: :unprocessable_entity
        end
     end

    def update
        doctor = Doctor.find(params[:id])
        doctor.update!(doctor_params)
        render json: doctor.to_json(except: [:created_at, :updated_at, :password_digest])
    end

    def destroy
        doctor = Doctor.destroy(params[:id])
        render json: {message: "doctor deleted"}
    end

    def location_index
        doctor = Location.find(params[:location_id])
        location=doctor.locations
        render json: location(except: [:created_at, :updated_at])
    end

    private
    
    def doctor_params
        params.permit(:first_name, :last_name, :email, :education, :speciality, :role, :username, :password, :password_confirmation)
    end

    def render_not_found
        render json: { error: "Doctor not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
