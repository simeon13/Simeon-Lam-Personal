class HomeController < ApplicationController
  def index
  end

  def about
  end

  def career
  end

  def connect
  end

  def download_pdf
    send_file(
      "#{Rails.root}/app/assets/images/resume.pdf",
      filename: "Simeon_Lam_Resume.pdf",
      type: "application/pdf"
    )
  end
end
