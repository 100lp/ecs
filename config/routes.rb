Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    
    root 'pages#index'
    # обратная связь
    get '/messages' => 'messages#new', :as => 'messages'
    post '/messages' => 'messages#create'
    
    # navigation
    get '/about', to: 'pages#about'
    get '/message', to: 'pages#message'
    get '/partners', to: 'pages#partners'
    get '/why', to: 'pages#why'
    get '/contacts', to: 'pages#contacts'

    # additionaly
    get '/tehosmotr', to: 'pages#tehosmotr'
    get '/insurance', to: 'pages#insurance'
    get '/osago', to: 'pages#osago'
    get '/green-card', to: 'pages#green'

    resources :categories, only: [], path: ''  do
      resources :articles, only: :show, path: ''
    end
  end 
end
