class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    @user = params[:user]
    @token = @user.signed_id(expires_in: 10.minutes, purpose:"password_reset")
    
    @greeting = "Hi"


    mail to: params[:user].email
  end
end
