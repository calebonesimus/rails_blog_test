Rails.application.routes.draw do
  get 'write_blog' => 'write_blog#new'
  post 'write_blog' => 'write_blog#create'

  get 'blog' => 'view_blog#view'

  root 'welcome#index'

end
