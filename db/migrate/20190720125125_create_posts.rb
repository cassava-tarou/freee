class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end
