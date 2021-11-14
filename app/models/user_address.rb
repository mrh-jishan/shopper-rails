class UserAddress < ApplicationRecord
  belongs_to :address_type
  belongs_to :user
  belongs_to :address
end
