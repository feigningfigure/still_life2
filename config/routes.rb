Rails.application.routes.draw do

  root to: 'photos#index'

  get '/photos' => 'photos#index'

  get '/photos/new' => 'photos#new'

  post "/photos" => "photos#create"

  get "/photos/show" => "photos#show"

  get "/photos/view" => "photos#view"

  delete "/photos/:id" => "photos#delete"


end
