Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'static_pages/conversions'

  get 'static_pages/recipebox'

  get 'static_pages/aboutproject'

  get 'static_pages/aboutme'

  get 'static_pages/contact'

  mount Ckeditor::Engine => '/ckeditor'
  resources :blogs
  get 'static_pages/index'
  root 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
