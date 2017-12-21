# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :workers, skip: [:registration]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :corporations, only: [:index, :show], shallow: true do
    resources :items, only: [:index]
    resources :factories, only: [:index, :show] do
      resources :principals, only: [:show, :edit, :update]
      resources :details, only: [:index]
      resources :workshops, only: [:index, :show] do
        resources :managers, except: [:index]
        resources :taskmasters do
          resources :employees
        end
      end
    end
  end
  root 'corporations#index'
end
