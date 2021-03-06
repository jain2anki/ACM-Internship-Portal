Rails.application.routes.draw do
  resources :applications

  devise_for :users

  resources :internships do
    resources :applications, only: [:new, :create]
  end

  resources :companies do
    resources :internships
  end

  root to: "internships#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
