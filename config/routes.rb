Rails.application.routes.draw do
 resources :applications, only: [ :new, :create]
  devise_for :users
  root to: 'pages#home'
  get 'school', to: "pages#school"
  get 'information', to: "pages#information"
  get 'pedagogie', to: "pages#pedagogie"
  get 'programme', to: "pages#programme"
  get 'contact', to: "pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
