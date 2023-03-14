Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'menu', to: 'menus#menu'
  get 'space', to: 'pages#space'
  get 'promotion', to: 'pages#promotion'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'reservations', to: 'pages#reservations'
end
