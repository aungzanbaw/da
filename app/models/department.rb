class Department < ApplicationRecord
  has_many :staffs
  has_many :products
end
