Rails.application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root :to => 'welcome#index'
    #get '/team_register' , to: 'teams#index' ,as: 'new_team'
    get '/teams', to: 'welcome#teams',as: 'teams'
    get '/contact', to: 'welcome#contact', as: 'contact'
    get '/about' , to: 'welcome#about', as:'about'
    get '/cheif_guest', to: 'welcome#cheif_guest', as: 'cheif_guest'
    get '/sponsors', to: 'welcome#sponsors', as: 'sponsors'
    get '/faq', to: 'welcome#faq', as: 'faq'
    get '/team_register', to:'welcome#team_register', as: 'team_register'
    get '/current_event', to:'welcome#current_event', as:'current_event'
   devise_for :users
   

  
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
