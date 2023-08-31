class WelcomeMailer < ApplicationMailer
    def welcome_email(newuser)
      @user = newuser
      @vnumber=newuser.position
      @url  = 'https://tnt-project-manager.netlify.app'
      mail(to: @user.email, subject: 'Welcome to T&T Com.')
    end
end
