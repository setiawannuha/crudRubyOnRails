Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/update'
  # get 'books/destroy'
  resources :books
  
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'
  post 'user' => 'users#create'
  put 'user/:id' => 'users#update'
  delete 'user/:id' => 'users#destroy'
end
