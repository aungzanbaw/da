class Department < ApplicationRecord
  has_many :staffs
  has_many :products
  validates :name, presence: true
  validates_associated :staffs
  validates_associated :products
end
