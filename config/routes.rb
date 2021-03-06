Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'

      resources :todos do
        collection do
          put 'mark_as_complete'
          get 'get_todos_count'
        end
      end

      resources :users do
        collection do
          put 'reset_password'
        end
      end

      resources :clients
      resources :projects do
        collection do
          put 'mark_as_complete'
          get 'get_tiles_data'
        end
      end

      resources :charges



    end
  end

  # get 'todos/index'
  # get 'todos/create'
  # get 'todos/update'
  # get 'todos/show'
  # get 'todos/destroy'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
