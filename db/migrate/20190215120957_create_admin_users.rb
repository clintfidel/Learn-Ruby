class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.boolean :is_admin
      t.string :role
      t.timestamps
    end
  end
end
