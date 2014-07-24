Rails.application.routes.draw do
  resources :event_registrants

  get 'check_in_registrant/:id' => 'event_registrants#check_in_registrant'

  root to: 'visitors#index'
end
