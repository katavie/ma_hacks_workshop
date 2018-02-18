Rails.application.routes.draw do
  namespace :api do
    resources :artists
  end
end
