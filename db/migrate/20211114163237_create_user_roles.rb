class CreateUserRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_roles do |t|
      t.references :user, index: true
      t.references :role, index: true
      t.string :description

      t.timestamps
    end
  end
end
