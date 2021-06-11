Rails.application.routes.draw do
  devise_for :admins, skip: %i[:registrations], controllers: {sessions: 'admins/sessions'}
  
  namespace :admin do
    root to: "home#index"
  end

end
