class Contact < ApplicationRecord
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :visa, {presence: true}
  validates :country, {presence: true}
  validates :work, {presence: true}
  validates :period, {presence: true}
  validates :message, {presence: true}
end
