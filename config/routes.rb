Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/new'
  get 'comments/destroy'
  get 'welcome/index'
  resources :articles do
    resources :messages
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
