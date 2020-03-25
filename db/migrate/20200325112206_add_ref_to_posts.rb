class AddRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :user, foreign_key: true, on_delete: :cascade
  end
end
