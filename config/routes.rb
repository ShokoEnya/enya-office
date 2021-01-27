Rails.application.routes.draw do
  devise_for :users
  root to: "sites#index"
  get 'sites/index'
  get 'sites/introduction'
  get 'sites/real_estate'
  get 'sites/commerce'
  get 'sites/inheritance'
  get 'sites/access'
  resources :information, except: :show
end
