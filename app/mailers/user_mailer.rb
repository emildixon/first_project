class UserMailer < ApplicationMailer
  default from: "emildixon@yahoo.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'emildixon@yahoo.com',
      :subject => "A new contact form message from #{name}")
  end


  def welcome_email(user)
    @user = user
    mail(:to => user, :subject => "Welcome to Pens Berlin!")
  end

end
