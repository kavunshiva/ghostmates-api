class Order < ApplicationRecord
  belongs_to :buyer, foreign_key: "buyer_id", class_name: "User"
  belongs_to :vendor, foreign_key: "vendor_id", class_name: "User"
  has_and_belongs_to_many :items
end
