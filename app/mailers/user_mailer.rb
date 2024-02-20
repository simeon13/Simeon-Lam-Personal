class UserMailer < ApplicationMailer
  require 'sendgrid-ruby'
  include SendGrid

  def send_email(params)
    from = Email.new(email: params[:contact_form][:email])
    to = Email.new(email: 'simeon.lam.dev@gmail.com')
    subject = params[:contact_form][:subject]
    content = Content.new(type: 'text/plain', value: 'params[:contact_form][:message]')
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    print response
  end
end
