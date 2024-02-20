class UserMailer < ApplicationMailer
  def send_email(params)
    @name = params[:contact_form][:name]
    @email = params[:contact_form][:email]
    @subject = params[:contact_form][:subject]
    @message = params[:contact_form][:message]

    mail(to: "simeon.j.lam@gmail.com", subject: @subject)
  end
end
