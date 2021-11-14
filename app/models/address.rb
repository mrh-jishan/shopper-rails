class Address < ApplicationRecord
  has_many :user_address
  has_many :users, :through => :user_address

  validates_presence_of :address_line1, :zip_code, :country_code, :state
end
