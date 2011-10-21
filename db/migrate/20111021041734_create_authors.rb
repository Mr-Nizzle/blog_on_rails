class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :picture
      t.string :name
      t.string :last_name
      t.string :email
      t.string :website
      t.text :about
      t.boolean :admin
      t.boolean :active

      t.timestamps
    end
  end
end
