class CreateAddressTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :address_types do |t|
      t.string :address_type
      t.text :description

      t.timestamps
    end
  end
end
