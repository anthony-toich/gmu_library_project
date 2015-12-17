Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

#get "/books" => "books#index", as: 'books'
#get "/books/new" => "books#new", as: 'new_book'
#get "/books/:id" => "books#show", as: 'book'
#post "/books" => "books#create"
#get "/books/:id/edit" => "books#edit", as: 'edit_book'
#patch "/books/:id" => "books#update"
#delete "/books/:id" => "books#destroy"
#resources :books

resources :books do
  get 'page/:page', :action => :index, :on => :collection
end

resources :authors do
  get 'page/:page', :action => :index, :on => :collection
end

resources :users do
  get 'page/:page', :action => :index, :on => :collection
end

root 'books#index'
end
