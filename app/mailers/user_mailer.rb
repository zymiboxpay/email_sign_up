class UserMailer < ApplicationMailer
  def sign_up_email(email, token)
    # TODO read config
    @url = "http://localhost:3000/sign_up?token=#{token}"
    mail(to: email, subject: 'whalemove sign up email')
  end
end
