Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Transactions
  get "transaction/find/:id" => "transactions#show"
  get "transaction/all" => "transactions#index"
  post "transaction/create" => "transactions#create"

  # Pets
  get "pet/find/:id" => "pets#show"
  get "pet/all" => "pets#index"
  post "pet/create" => "pets#create"
  get "pet/getdeal/:id" => "pets#getDeal"
  delete "pet/:id" => "pets#delete"

  get "deal/find/:id" => "deals#show"
  get "deal/all" => "deals#index"
  post "deal/create" => "deals#create"
end
