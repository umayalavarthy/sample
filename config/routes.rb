Sample::Application.routes.draw do
  


  get "courses/index"

  get "courses/find1"

  get "courses/find"

  get "students/find"

  get "students/find1"

  get "courses/show"

  get "charts/index"

  get "charts/new"

  get "charts/show"

  get "cricones/index"

  get "cricones/shown"

  get "maps/show"

  get "students/index"

  get "students/show"

  get "students/searching"
  
  get "students/search"

  get "students/new"

 # devise_for :users

  match '/calendars(/:year(/:month))' => 'calendars#index', :as => :calendars, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  get "admissions/home"

  get "admissions/new"

  get "admissions/show"

  get "admissions/edit"

    get "admissions/contactus"
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  resources :cricones

  resources :admissions

  resources :students

  devise_for :teachers

   resources :courses

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
 root :to => "admissions#index"
#root :to => "students#index"


 #devise_for :admissions, :controllers => { :sessions => "admissions/sessions" }
  # See how all your routes lay out with "rake routes"
#devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
   
end
