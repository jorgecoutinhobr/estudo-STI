Rails.application.routes.draw do
  resources :paradas
  resources :caronas
  resources :unidades
  root 'welcome#index'
end
