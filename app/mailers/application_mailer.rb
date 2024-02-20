class ApplicationMailer < ActionMailer::Base
  require 'sendgrid-ruby'
  include SendGrid

  default from: "simeon.j.lam@gmail.com"
  layout "mailer"
end
