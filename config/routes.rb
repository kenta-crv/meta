Rails.application.routes.draw do
  root to: 'top#index' #トップランディングページ
  get 'lp' => 'top#lp' #ライディングページ
  get 'business' => 'top#business' #事業内容
  get 'company' => 'top#company'  #会社概要
  get 'privacy' => 'top#privacy' #プライバシーポリシー
  get 'case' => 'top#case' #成功事例
  get 'question' => 'top#question' #ナレッジリスト

  resources :posts

  resources :customers do
    resources :calls
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'contact#index'
  post '/confirm' => 'contact#confirm'
  post '/thanks' => 'contact#thanks'

  get 'trial' => 'trial#index'
  post 'trial/confirm' => 'trial#confirm'
  post 'trial/thanks' => 'trial#thanks'
end
