class ContactMailer < ActionMailer::Base
  default from: "lstep@factoru.jp"
  def received_email(contact)
    @contact = contact
    mail to: "lstep@factoru.jp"
    mail(subject: 'Lステップコンサルティングよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(contact)
    @contact = contact
    mail to: contact.email
    mail(subject: 'Lステップコンサルティングにお問い合わせ頂きありがとうございます｜合同会社ファクトル') do |format|
      format.text
    end
  end

end
