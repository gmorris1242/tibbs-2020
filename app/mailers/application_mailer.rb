class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def contact(params)
    @params = params

    opts = {
      subject: 'Contact',
      from: @params[:email],
      to: ENV['DEFAULT_TO']
    }

    mail opts
  end
end
