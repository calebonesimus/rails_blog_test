class ViewBlogController < ApplicationController
  def view
    @blog_title = BlogPost.last.blog_title
    @date_pub = BlogPost.last.created_at
    @blog_content = BlogPost.last.blog_content
  end
end
