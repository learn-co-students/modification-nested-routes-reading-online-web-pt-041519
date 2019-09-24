Rails.application.routes.draw do

  resources :posts 

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end

end
