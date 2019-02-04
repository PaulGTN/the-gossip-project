Rails.application.routes.draw do
      root 'static_pages#accueil'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'static_pages#welcome', as: 'welcome'
  get '/gossip/:gossip_id', to: 'static_pages#each_gossip', as: 'gossip'
  get '/authordetails', to: 'static_pages#authordetails'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
