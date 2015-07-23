class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :blog_title
      t.string :date_pub
      t.string :blog_content

      t.timestamps null: false
    end
  end
end
