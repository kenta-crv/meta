class Contact < ApplicationRecord
  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :industry, {presence: true}
  validates :number_of_people, {presence: true}
  validates :history, {presence: true}
  validates :period, {presence: true}
  validates :message, {presence: true}
end
