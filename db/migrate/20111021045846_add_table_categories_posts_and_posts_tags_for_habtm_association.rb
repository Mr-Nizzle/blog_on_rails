class AddTableCategoriesPostsAndPostsTagsForHabtmAssociation < ActiveRecord::Migration
  def up
  	create_table :categories_posts, :id => false do |t|
  		t.references :category
  		t.references :post
    end
    create_table :posts_tags, :id => false do |t|
  		t.references :post
  		t.references :tag
    end
  end

  def down
  	drop_table :categories_posts
  	drop_table :posts_tags
  end
end
