Rails.application.routes.draw do
  resources :miniaturas_reservas
  resources :miniaturas
  resources :reservas do
    collection do
      get 'confirmar_reserva'
    end
  end
  get 'home/index'
  root to: 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
