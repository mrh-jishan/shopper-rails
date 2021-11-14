class User < ApplicationRecord

  has_many :user_addresses
  has_many :addresses, :through => :user_addresses
  accepts_nested_attributes_for :user_addresses
  accepts_nested_attributes_for :addresses

  has_many :posts

  has_many :user_roles
  has_many :roles, :through => :user_roles
  # accepts_nested_attributes_for :user_roles

  validates_presence_of :first_name, :last_name, :email, :password_digest
  validates :email, uniqueness: true

  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
               BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
