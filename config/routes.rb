Rails.application.routes.draw do
  root to: 'customer#index' #トップランディングページ
  resources :customers
end
