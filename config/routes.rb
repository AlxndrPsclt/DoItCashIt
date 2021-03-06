DoItCashIt::Application.routes.draw do
  resources :users
  resources :defis
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  root to: 'static_pages#home'

  match '/home', to: 'static_pages#home'

  match '/help', to: 'static_pages#help'

  match '/defis_show_all', to: 'defis#index'
  match '/defisrealises', to: 'defis#defisrealises'
  match '/defisarealiser', to: 'defis#defisarealiser'

  match 'defis/:id/destroy', to: 'defis#destroy', :as => :suppress
  match 'defis/:id/edit', to: 'defis#edit', :as => :edit_defi

  match '/signup', to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/users', to: 'users#show'
  match '/defis', to: 'defis#show'

  match '/formulaire', to: 'defis#new'

  match 'users/:id/edit', to: 'users#edit', :as => :edit_user
  match 'users/:id/promote', to: 'users#promote_admin', :as => :promote
  match 'users/:id/unpromote', to: 'users#unpromote_admin', :as => :unpromote
  
  match '/microposts', to: 'microposts#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
