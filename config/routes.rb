Rails.application.routes.draw do
  root to: 'customer#index' #トップランディングページ
  resources :customers
  post 'leads/webhook', to: 'leads#webhook'
end
