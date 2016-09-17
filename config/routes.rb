Rails.application.routes.draw do
  
  root to: 'users#index'
  
  resources :users do
    resources :apps do
      resources :versions
    end
  end
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  "
  get '/', to: 'users#index'
  get '/new', to: 'users#new'
  post '/new', to: 'users#create'
  
  get '/:username', to: 'users#show'
  get '/:username/new', to: 'apps#new'
  post '/:username', to: 'apps#create'
  
  get '/:username/:appname', to: 'apps#show'
  get '/:username/:appname/new', to: 'versions#new'
  post '/:username/:appname', to: 'versions#create'
  
  get '/:username/:appname/:version', to: 'versions#show'
  "
  #get '/:username/edit', to: 'users#edit'
  
end