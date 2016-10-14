Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :products
resources :types

    root to: "users#index"
  end

  devise_for :users
  root to: 'pages#home'
  get 'services' => 'pages#services'
  get 'devis' => 'pages#devis'
  get 'contact' => 'pages#contact'
  get 'dashboard' => 'pages#dashboard'
  get 'promotions' => 'pages#promotions'
  # get 'promo' => 'pages#promo'

  resources :types
  resources :promos


  resources :albums
  resources :brands


  resources :products do
    resources :infos
    resources :powers
  end

  mount Attachinary::Engine => "/attachinary"
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
