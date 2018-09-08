Rails.application.routes.draw do

  root 'welcome#index'

  resources :users do
      resources :incomes
      resources :expenses
  end

  resources :sessions

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
