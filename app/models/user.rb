class User < ApplicationRecord
  has_secure_password

  has_many :user_addresses
  has_many :addresses, :through => :user_addresses
end
