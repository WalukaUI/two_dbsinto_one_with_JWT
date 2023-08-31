# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview
  def new_appointment
    appointment=Appointment.last
    AppointmentMailer.new_appointment(appointment)
  end

end
