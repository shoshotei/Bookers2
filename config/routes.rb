Rails.application.routes.draw do
 root to:"homes#top"
devise_for :users
 get '/homes/about' => 'homes#about', as: 'about'

get 'books/index'
resource :books, only:[:new, :index, :show, :edit, :create]
resource :users, only:[:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
