Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
end



# ユーザー編集機能を実装するため、まずはルーティングを定義していきましょう。
# ユーザーの編集に必要なルーティングは:edit, :updateなので、routes.rbに追記しておきましょう。
