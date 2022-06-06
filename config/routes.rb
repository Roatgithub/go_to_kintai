Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :attendances, only:[:index, :create, :edit, :update, :destroy]
  resources :quizzes do
    collection do
      get 'search'
    end
  end
  #get '*path', controller: 'application', action: 'render_404'
end