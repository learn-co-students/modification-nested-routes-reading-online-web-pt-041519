Rails.application.routes.draw do

  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :new, :show, :edit]
  end

  resources :posts, only: [:index, :new, :create, :show, :edit, :update]

end
