Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tokens, only: %i[create]
    end
  end
  namespace :api, defaults: { format: :json } do 
    namespace :v1 do 
      resources :users, only: %i[show create update destroy]
    end 
  end 
  namespace :api, defaults: { format: :json } do 
    namespace :v1 do 
      resources :products, only: %i[show index create update destroy] 
    end 
  end 

end
