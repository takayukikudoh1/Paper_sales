# Preview all emails at http://localhost:3000/rails/mailers/sample_mailer
class SampleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sample_mailer/send_when_create
  def send_when_create
    SampleMailer.send_when_create
  end

end
