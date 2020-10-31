Rails.application.routes.draw do

  devise_for :users
  get 'users/index'
  # マークアップ画面の確認のため現状仮のルーティングを行っている
  root to: 'items#index'
  resources :items, only: :new
  get 'items/confirm/:id', to: 'items#confirm'
  post 'items/confirm/:id', to: 'items#pay'

  resources :card, only: [:new, :create, :edit, :update, :destroy]
end
