class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      # add_reference :comments, :user, foreign_key: true
      # add_reference :comments, :post, foreign_key: true
      t.timestamps
    end
  end
end
