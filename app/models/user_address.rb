class UserAddress < ApplicationRecord

  belongs_to :address_type
  belongs_to :user
  belongs_to :address

  validates_presence_of :user_id, :address_id, :address_type_id
end
