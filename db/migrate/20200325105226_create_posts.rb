class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 50, null: false, unique: true
      t.text :content, null: false
      t.timestamps
    end
  end
end
