Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  resources :skills do
    member do
      get :skill_like_join
      get :skill_like_quit
    end
  end

  resources :jobs do
    member do
      get :job_like_join
      get :job_like_quit
    end
  end

  namespace :geren_yonghu do
    resources :jobs
    resources :skills do
      collection do
        get :current_user_first_touch
      end
    end
  end

  namespace :qiye_yonghu do
    resources :jobs
    resources :skills
  end

end
