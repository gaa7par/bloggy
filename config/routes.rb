Rails.application.routes.draw do

  get 'articles/new'

  resources :articles

  root 'welcome#index'
end
