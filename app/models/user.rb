class User < ApplicationRecord
  has_many :orders
  has_many :buyers, through: :buyer_vendors, source: :buyer
  has_many :vendors, through: :vendor_buyers, source: :vendor
  has_many :buyer_vendors, foreign_key: :buyer_id, class_name: "Order"
  has_many :vendor_buyers, foreign_key: :vendor_id, class_name: "Order"
end
