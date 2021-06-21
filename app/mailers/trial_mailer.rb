class TrialMailer < ActionMailer::Base
  default from: "info@okurite.jp"
  def received_email(trial)
    @trial = trial
    mail to: "info@okurite.jp"
    mail(subject: 'Okuriteよりお問い合わせがありました') do |format|
      format.text
    end
  end

  def send_email(trial)
    @trial = trial
    mail to: trial.email
    mail(subject: 'Okuriteにお問い合わせ頂きありがとうございます｜株式会社Ri-Plus') do |format|
      format.text
    end
  end

end
