Blocmetrics::Application.routes.draw do
  devise_for :users
  resources :applications
  get 'about' => 'welcome#about'
  get 'profile' => 'users#show'

  namespace :api do
    namespace :v1 do
      resources :clicks, only: :create
    end
  end

  root to: "welcome#index"
end
