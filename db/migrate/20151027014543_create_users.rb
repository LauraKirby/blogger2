class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :password
      t.string :persistence_token
      t.string :password_salt

      t.timestamps
    end
  end
end
