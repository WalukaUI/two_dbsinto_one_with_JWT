class AppointmentMailer < ApplicationMailer
  def new_appointment(appointment)
    @newBooking = appointment
    appointment_patient=Patient.find(@newBooking.patient_id)
    doc_name=Doctor.find(@newBooking.doctor_id)
    @doc=doc_name
    @patientOftheBooking=appointment_patient
    @url  = 'https://doctor-appointment-creator.netlify.app/patientlogin'
    mail(to: @patientOftheBooking.email, subject: 'New Appointment Created')
  end
end
