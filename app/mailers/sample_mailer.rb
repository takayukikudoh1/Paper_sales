class SampleMailer < ApplicationMailer
  default from: "Paper Sales Site"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sample_mailer.send_when_create.subject
  #
  def send_when_create(user, order)
    @user = user
    @order = order
    mail to: @user.email,
         subject:  '注文をお受けいたしました。'
  end
end


