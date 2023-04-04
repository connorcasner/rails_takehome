Rails.application.routes.draw do
  resources :members
  resources :teams do
    member do
      post :add_members
      post 'remove_member/:member_id', to: 'teams#remove_member', as: :remove_member
    end
  end

  resources :projects do
    member do
      post :add_members
      post 'remove_member/:member_id', to: 'projects#remove_member', as: :remove_member
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
