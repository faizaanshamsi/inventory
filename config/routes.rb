Inventory::Application.routes.draw do
  resources :entries, only: [:index, :new, :show]
end
