class Transaction < ApplicationRecord
  validates :pet, presence: true
  validates :date, presence: true
  validates :value, presence: true
  validates :amount, presence: true
end
