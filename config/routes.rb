Rails.application.routes.draw do
  root 'urls#new'

  resources :urls, only: %i[new create show]

  get '/:url', to: 'urls#redirect', as: 'redirect'
end
