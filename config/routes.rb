Rails.application.routes.draw do
  
  resources :unidades
  root 'welcome#index'
end
