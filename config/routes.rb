Rails.application.routes.draw do
  devise_for :users
  root to: "sites#index"
  get 'sites/index'
  get 'sites/introduction'
  get 'sites/real_estate'
  get 'sites/commerce'
  get 'sites/inheritance'
  get 'sites/lawsuit'
  get 'sites/liabilities'
end
