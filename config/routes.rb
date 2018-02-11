Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'pages#home'

  resources :blogs
  resource :pages, path: '', only: [] do
    get :home
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
