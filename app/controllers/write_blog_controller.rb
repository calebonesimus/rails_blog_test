class WriteBlogController < ApplicationController

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(user_params)
      if @blog_post.save
        render template: 'welcome/index'
      else
        render plain: "Blog did not save correctly."
      end
  end

  def user_params
    params.require(:blog_post).permit(:blog_title, :blog_content)
  end
end
