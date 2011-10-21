class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :body
      t.boolean :draft
      t.references :session
      t.references :author

      t.timestamps
    end
    add_index :posts, :session_id
    add_index :posts, :author_id
  end
end
