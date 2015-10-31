class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :published, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end