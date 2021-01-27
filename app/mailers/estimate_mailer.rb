class EstimateMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"
  #default to: @estimate.email

  #def send_when_admin_reply(estimate) #メソッドに対して引数を設定
  #  @estimate = estimate
  #  mail to: estimate.email,
  #           subject: '【株式会社Ri-Plus】 お問い合わせありがとうございます。'
  #end

  def received_email(estimate)
    @estimate = estimate
    mail to: "info@ri-plus.jp"
    mail(subject: 'Okuriteよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.mail
    mail(subject: 'お問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

end
