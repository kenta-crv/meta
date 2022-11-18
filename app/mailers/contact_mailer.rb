class ContactMailer < ActionMailer::Base
  default from: "futurejobs@factoru.jp"
  def received_email(contact)
    @contact = contact
    mail to: "futurejobs@factoru.jp"
    mail(subject: 'Future Jobsよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Future Jobsにお問い合わせ頂きありがとうございます｜合同会社ファクトル') do |format|
      format.text
    end
  end

end
