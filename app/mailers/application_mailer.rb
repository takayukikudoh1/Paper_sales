class ApplicationMailer < ActionMailer::Base
  default bcc: "towakud0512@gmail.com"
  layout 'mailer'
end
