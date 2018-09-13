Rails.application.routes.draw do

  root 'welcome#index'
  get 'dashboard' => 'dashboard#index'

  resources :users do
      resources :incomes
      resources :expenses
  end


  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
