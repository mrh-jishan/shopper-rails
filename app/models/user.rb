class User < ApplicationRecord
  has_secure_password

  has_many :user_addresses
  has_many :addresses, :through => :user_addresses

  has_many :posts

  has_many :user_roles
  has_many :roles, :through => :user_roles

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
               BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
