Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within th
  resources :boats, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :new, :create, :edit, :update]
  end

end
