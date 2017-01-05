class Order < ApplicationRecord
  belongs_to :customer
  has_many :details
  validates_associated :details
end
