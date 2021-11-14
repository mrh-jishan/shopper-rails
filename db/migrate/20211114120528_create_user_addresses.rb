class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.references :user, index: true
      t.references :address_type, index: true
      t.references :address, index: true
      t.text :description

      t.timestamps
    end
  end
end
