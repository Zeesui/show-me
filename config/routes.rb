Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  resources :skills do
    collection do
      post :user_first_skills
    end
  end

  namespace :geren_yonghu do
    resources :skills
  end
  
end
