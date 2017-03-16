class UsersController < ApplicationController
  def sign_up
    email = params['email']
    raise ArgumentError.new 'should pass email' if email.blank?

    user_registered = User.find_by_email email

    type = if user_registered
             'sign_in'
           else
             'sign_up'
           end
    token = Token.gen type

    UserMailer.sign_up_email(email, token).deliver_later

    render json: {return_code: 0, return_info: 'OK'}
  end

  def sign_in
  end
end
