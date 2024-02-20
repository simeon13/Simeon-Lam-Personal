class HomeController < ApplicationController
  def contact_form
    UserMailer.send_email(params).deliver_now
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
