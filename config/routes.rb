Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'users#show'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end


  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :events
  resources :invites

end
