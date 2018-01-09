Rails.application.routes.draw do
  resources :posts
  resources :videos

  # get 'videoplay/video'
  # get 'vvvv/:id' => 'videoplay#video'

  root 'main#home'

  devise_for :users
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
