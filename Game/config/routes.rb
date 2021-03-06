Rails.application.routes.draw do
  
  root :to => "sessions#new"
  get "home" => "sessions#home", :as => "home"
  get "profile" => "users#edit", :as => "profile"
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"
  get "delete" => "users#delete", :as => "delete"
  post "sessions/fb_login"
  get "sessions/fb_login"
  get "users/admin_page"
  get "users/admin_user_delete"
  get "users/admin_user_update"
  get "users/admin_user_create"
  get "users/admin_image_delete"
  post "users/admin_image_delete"
  get "users/admin_image_update"
  post "users/admin_image_update"
  post "users/admin_user_delete"
  post "users/admin_user_update"
  post "users/admin_user_create"
  post "sessions/play"
  get "sessions/play"
  post "sessions/checkAns"
  get "sessions/checkAns"
  post "sessions/endGame"
  get "sessions/endGame"
  post "upload" => "users#upload"
  post "sessions/new"
  post "sessions/mail"
  get "sessions/mail"
  resources :users
  resources :sessions
  resource :profile
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
