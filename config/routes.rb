Rails.application.routes.draw do
  get 'omniauth_callbacks/index'

  root 'grayscales#index'

  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}

  resources 'testimonials'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
