class WorkerMailer < ActionMailer::Base
  default from: "info@ri-plus.jp"

  def received_email(worker)
    @worker = worker
    mail to: "info@ri-plus.jp"
    mail(subject: 'Okuriteに求人申込がありました') do |format|
      format.text
    end
  end

  def send_email(worker)
    @worker = worker
    mail to: worker.mail
    mail(subject: 'Okuriteにご応募頂きありがとうございます') do |format|
      format.text
    end
  end
end
