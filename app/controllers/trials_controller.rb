class TrialsController < ApplicationController
  def index
    @trial = Trial.new
    render :action => 'index'
  end

  def confirm
    @trial = Trial.new(trial_params)
    if @trial.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @trial = Trial.new(trial_params)
    @trial.save
    TrialMailer.received_email(@trial).deliver
    TrialMailer.send_email(@trial).deliver
  end

  private
  def trial_params
    params.require(:trial).permit(
      :company, #会社名
      :name, #担当者名
      :tel, #電話番号
      :email, #メールアドレス
      :address, #住所
      :try, #トライアル希望有無
      :list, #リスト有無
      :script, #スクリプト有無
      :contract, #本契約に進む際の月間希望件数
      :remarks, #その他
      :agree #同意
    )
  end
end
