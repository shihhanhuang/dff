Rails.application.routes.draw do
  get 'static_pages/thank_you'

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

  post 'static_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
