Bootcampsearch::Application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root "static#home"
  get "/about", to: "static#about"
  resources :programs

  get "location/:tag", to: "coding_bootcamps#index", as: :location
  get "language/:tag", to: "coding_bootcamps#index", as: :language

  # enables use of /coding-bootcamp instead of /coding_bootcamp
  resources "programming-bootcamps", :controller => :coding_bootcamps, :as => :coding_bootcamps

  get "sitemap.xml" => "sitemap#index", as: "sitemap", defaults: { format: "xml" }
end
