class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :location
      t.string :image
      t.string :mount
      t.string :zoom
      t.string :distance
      t.string :F
      t.string :Is
      t.text :content
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
