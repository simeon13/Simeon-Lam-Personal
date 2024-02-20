class UserMailer < ApplicationMailer
  def send_email
    @contact_form = params[:contact_form]
    mail(to: "simeon.j.lam@gmail.com", subject: @contact_form.subject)
  end
end
