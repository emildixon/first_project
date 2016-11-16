class UserMailer < ApplicationMailer
  default from: "emildixon@yahoo.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'emildixon@yahoo.com',
      :subject => "A new contact form message from #{name}")
  end

end
