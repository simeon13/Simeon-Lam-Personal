class HomeController < ApplicationController
  def contact_form
    @name = params[:contact_form][:name]
    @email = params[:contact_form][:email]
    @subject = params[:contact_form][:subject]
    @message = params[:contact_form][:message]

    UserMailer.with(contact_form: @contact_form).send_email.deliver_now
    flash[:alert] = "Message sent successfully. Thank you!"
    redirect_to :root
  end

  def download_pdf
    send_file(
      "#{Rails.root}/app/assets/images/resume.pdf",
      filename: "Simeon_Lam_Resume.pdf",
      type: "application/pdf"
    )
  end

  private

  def contact_params
    params.require(:contact_form).require(:name, :email, :subject, :message)
  end
end
