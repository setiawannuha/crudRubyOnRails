Rails.application.routes.draw do

  get 'users/index'
  get 'users/new'
  post 'users/create'
  post 'users/create_ajax'
  get 'users/edit'
  post 'users/update'
  get 'users/destroy'

  get 'students/index'
  post 'students/create'
  delete 'students/destroy'

  get 'schools/index'
  delete 'schools/destroy'
  post 'schools/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
