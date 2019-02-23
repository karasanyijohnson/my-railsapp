Rails.application.routes.draw do
  resources :movies   
   root "movies#index"
   
   get "home" =>"movies#home",as: :home 
   get "pricing" =>"movies#pricing",as: :pricing
   get "new" =>"movies#new",as: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
