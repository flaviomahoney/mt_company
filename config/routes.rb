Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/contato', to: 'pages#contato'
  get '/quem_somos', to: 'pages#quem_somos'
  get '/produto', to: 'pages#produto'
end
