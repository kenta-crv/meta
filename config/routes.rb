Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ
  get 'business' => 'top#business' #事業内容
  get 'company' => 'top#company'  #会社概要
  get 'privacy' => 'top#privacy' #プライバシーポリシー
  get 'case' => 'top#case' #成功事例
  get 'question' => 'top#question' #ナレッジリスト

  resources :posts

  get '/estimates' => 'estimates#index'
  post 'estimates/confirm' => 'estimates#confirm'
  post 'estimates/thanks' => 'estimates#thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'
end
