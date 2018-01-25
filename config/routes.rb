Rails.application.routes.draw do
  root 'welcome#index'

  get 'users' =>'welcome#users'
  post 'create_users' => 'welcome#users'

  post 'products' => 'welcome#create_products'
  get 'products' => 'welcome#products'

  get 'show_user' => 'welcome#show_user'
  get 'edit_user' => 'welcome#edit_user'
  post 'update_user' => 'welcome#update_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
