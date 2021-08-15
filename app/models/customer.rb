class Customer < ApplicationRecord
  #belongs_to :admin
  belongs_to :admin, optional: true
  has_many :calls
  has_one :last_call, ->{
    order("created_at desc")
  }, class_name: :Call

  def self.ransackable_scopes(_auth_object = nil)
    [:calls_count_lt]
  end

  def self.calls_count_lt(count)
    select('*, COUNT(calls.id) AS calls_count')
    .joins(:calls)
    .group('customers.id')
    .where('calls_count <= ?', count)
  end
end
