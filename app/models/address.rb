class Address < ApplicationRecord
  has_one :user_address
  has_many :users, :through => :user_address
end
