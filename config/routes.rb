Rails.application.routes.draw do
  root to: "sites#index"
  get 'sites/index'
  get 'sites/introduction'
  get 'sites/real_estate'
  get 'sites/commerce'
end
