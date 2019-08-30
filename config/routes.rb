Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy, :index]
  root 'sessions#new'
  resources :sessions
  resources :posts do
    member do
      put "like", to: 'posts#vote'
    end
  end
  resources :profiles
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
