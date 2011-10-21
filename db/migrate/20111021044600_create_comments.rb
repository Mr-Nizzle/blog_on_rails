class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :website
      t.references :author
      t.references :post
      t.boolean :from_author
      t.boolean :from_owner
      t.boolean :reviewed
      t.boolean :approved

      t.timestamps
    end
    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
