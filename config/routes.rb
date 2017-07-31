 Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  namespace :admins do
    resources :categories
    resources :articles do
        resources :article_notes
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
