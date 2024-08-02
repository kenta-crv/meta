Rails.application.routes.draw do
  root to: 'top#index' #トップランディングページ
  resources :customers
  post 'leads/webhook', to: 'leads#webhook'
end
