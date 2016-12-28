class Customer < ApplicationRecord
  has_many :orders
  validates :phone, uniqueness: true
end
