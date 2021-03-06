Rails.application.routes.draw do
  root to: 'homes#top'
  get "home/about" => "homes#about"

  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]

  end


resources :users, only: [:index, :show, :edit, :update]

delete '/books' => 'books#destroy'

end
