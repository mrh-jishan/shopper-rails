class AddressType < ApplicationRecord
  has_many :user_addresses

  validates_presence_of :address_type, :description
end
