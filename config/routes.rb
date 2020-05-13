Rails.application.routes.draw do
  devise_for :users

  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
  resources :messages, only: [:index, :create]
  end
end



# ユーザー編集機能を実装するため、まずはルーティングを定義していきましょう。
# ユーザーの編集に必要なルーティングは:edit, :updateなので、routes.rbに追記しておきましょう。
