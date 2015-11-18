Rails.application.routes.draw do

  #Registering new User and send to Events page
  get '/users' => 'users#index'
  post '/users' => 'users#new'

  #Logging in and send to Events page
  post '/sessions' => 'sessions#index'

  #Log Out
  delete '/sessions' => 'sessions#destroy'

  #Go to Events main page
  get '/events' => 'events#index'

  #Go to User Profile & Update changes
  get '/users/:id' => 'users#edit'
  patch '/users/:id' => 'users#update'

  #Add new event on the Event page
  post '/events' => 'events#create'

  #Go to specific event page
  get '/events/:id' => 'events#show'

  #Join a event
  post '/join' => 'joins#index'

  #Canceling/Deleting the event
  delete '/events/:id' => 'events#destroy'


  #Join & Unjoin an Event
  post '/joins' => 'joins#create'
  delete '/joins/:id' => 'joins#delete'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

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
