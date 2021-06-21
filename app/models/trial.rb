class Trial < ApplicationRecord
  validates :company, {presence: true} #会社名
  validates :name, {presence: true} #担当者名
  validates :tel, {presence: true} #電話番号
  validates :email, {presence: true} #メールアドレス
  validates :address, {presence: true} #住所
  validates :try, {presence: true} #トライアル希望有無
  validates :list, {presence: true} #リスト有無
  validates :script, {presence: true} #スクリプト有無
  validates :contract, {presence: true} #本契約に進む際の月間希望件数
  validates :agree, {presence: true} #同意
end
