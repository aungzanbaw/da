class Customer < ApplicationRecord
  has_many :orders
  validates :phone, presence: true, uniqueness: true
  validates :password, presence: true
  validates_associated :orders
end
