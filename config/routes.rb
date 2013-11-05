Bootcampsearch::Application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root "static#home"
  resources :programs

  get 'type/:tag', to: 'programs#index', as: :type
  get 'location/:tag', to: 'programs#index', as: :location
  get 'language/:tag', to: 'programs#index', as: :language

  # enables use of /coding-bootcamp instead of /coding_bootcamp
  resources "coding-bootcamp", :controller => :coding_bootcamps, :as => :coding_bootcamps

  get "sitemap.xml" => "sitemap#index", as: "sitemap", defaults: { format: "xml" }
end
