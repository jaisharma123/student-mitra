 Rails.application.routes.draw do

  devise_for :users
  resources :techwords, only: [:index, :show]
  resources :articles, only: [:show,:index  ]
  get 'home/index'
  root 'home#index'

  namespace :admins do
    resources :techwords
    resources :categories
    resources :articles do
        resources :article_notes
    end
  end

  post "comments/create_article_comments" => "comments#create_article_comments"
  post "comments/create_techword_comments" => "comments#create_techword_comments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
