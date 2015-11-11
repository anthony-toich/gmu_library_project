Rails.application.routes.draw do
get "/books" => "books#index", as: "books"
get "/books/:id" => "books#show", as: "book"
end
