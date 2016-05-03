Rails.application.routes.draw do
  resources :profiles do
    get "edit_selected_options"
    patch "update_options"
  end
  resources :options
  
  root to: "application#home"
end
