class ViewBlogController < ApplicationController
  def view
    if BlogPost.exists?
      @blog_title = BlogPost.last.blog_title
      @date_pub = BlogPost.last.created_at
      @blog_content = BlogPost.last.blog_content
    else
      render template: 'view_blog/view'
    end
  end
end
