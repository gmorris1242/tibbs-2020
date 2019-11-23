class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def contact(params)
    @params = params

    opts = {
      subject: 'Contact',
      from: @params[:email],
      to: 'gmorris1242@gmail.com'
    }

    mail opts
  end
end
