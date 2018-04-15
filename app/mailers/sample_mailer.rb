class SampleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sample_mailer.send_when_create.subject
  #
  def send_when_create
    mail to: 'towakud0512@gmail.com',
         subject:  '注文をお受けいたしました。'
  end
end
