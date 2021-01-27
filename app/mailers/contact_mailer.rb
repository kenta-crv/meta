class ContactMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  def received_email(contact)
    @contact = contact
    mail to: "info@ri-plus.jp"
    mail(subject: 'Okuriteよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Okuriteにお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

end
