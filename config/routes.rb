Rails.application.routes.draw do
  # routes main page to home
  get "/", to: "pages#home", as: "root"
# URL extension get will route to view on right with the name in ""
  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  patch "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  get "*path", to: "pages#not_found"


end
