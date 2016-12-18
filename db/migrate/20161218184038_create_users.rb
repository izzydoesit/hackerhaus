class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.boolean :is_admin
      t.string :role
      t.string :activation_code

      t.timestamps null: false
    end
  end
end
