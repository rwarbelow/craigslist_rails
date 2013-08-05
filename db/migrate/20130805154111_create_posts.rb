class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :email
      t.integer :price
      t.belongs_to :category
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
