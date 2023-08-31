class DeleteEmployeeMailer < ApplicationMailer
    def delete_employee(empl)
        @emp = empl
        @usremail=User.find(session[:cncuser_id])
        mail(to: @usremail.email, subject: 'Data Changed in your T&T account.')
      end
end

