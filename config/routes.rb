Rails.application.routes.draw do
  resources :event_registrants

  root to: 'visitors#index'
end
