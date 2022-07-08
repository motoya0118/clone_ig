Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
