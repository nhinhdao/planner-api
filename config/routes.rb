Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :only => [:index, :show, :create, :update] do
        resources :places,  :only => [:index, :create, :update, :destroy, :show]
        resources :timetables,  :only => [:index, :create, :update, :show, :destroy]
      end
      post '/login' => 'session#create'
      post '/logout' => 'session#destroy'
      post '/signup' => 'users#create'
    end
  end
end
