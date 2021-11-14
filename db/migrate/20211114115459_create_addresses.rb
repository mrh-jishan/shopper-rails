class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country_code
      t.string :postal_code
      t.string :zip_code
      t.text :description

      t.timestamps
    end
  end
end
