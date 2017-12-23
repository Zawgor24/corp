# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :workers, skip: [:registration]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :corporations, only: %i[index show], shallow: true do
    resources :items, only: [:index]
    resources :factories, only: %i[index show] do
      resources :principals, only: %i[show edit update]
      resources :details, only: [:index]
      resources :workshops, only: %i[index show] do
        resources :managers, except: [:index]
        resources :taskmasters do
          resources :employees
        end
      end
    end
  end
  root 'corporations#index'
end
