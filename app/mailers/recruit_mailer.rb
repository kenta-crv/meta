class RecruitMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  #default to: "info@ri-plus.jp"

  def received_email(recruit)
    @recruit = recruit
    mail to: "info@ri-plus.jp"
    mail(subject: 'Okuriteのテレアポ業務に応募がありました。') do |format|
      format.text
    end
  end

  def send_email(recruit)
    @recruit = recruit
    mail to: recruit.mail
    mail(subject: 'Okuriteに求人応募頂きありがとうございます。') do |format|
      format.text
    end
  end

end
