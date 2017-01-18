class UserNotifierMailer < ApplicationMailer
  default :from => 'doable@todoable.co'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks and welcome aboard!' )
  end

  def send_recover_password_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => '[Doable] Recover your password' )
    )
  end
end
