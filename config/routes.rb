Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  resources :skills

  resources :jobs

  namespace :geren_yonghu do
    resources :skills do
      collection do
        post :current_user_first_touch
      end
    end
  end

  namespace :qiye_yonghu do
    resources :jobs
  end

end
