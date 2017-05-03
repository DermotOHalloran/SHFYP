Rails.application.routes.draw do
  # For details  see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-me', to: 'contacts#new', as: 'new_contact'
end
