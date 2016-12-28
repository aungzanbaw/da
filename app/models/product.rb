class Product < ApplicationRecord
  belongs_to :department
  has_many :order_details
end
