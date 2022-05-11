Rails.application.routes.draw do

  root to: 'gossip#index' # défini le 'root_path' sur la view index du gossip controller (on arrive sur cette page lorsqu'on tape 'localhost:3000')
  get '/gossip/:id', to: 'gossip#show', as: 'gossip' # défini 'localhost:3000/gossip/*id du gossip*' sur la view "gossip/show" gérée par la méthode show du GossipController - le 'as: 'gossip' permet de définir un préfix dans la route pour pouvoir faire un "link_to"

  get '/contact', to: "static#contact"
  get '/team', to: "static#team"
  get '/welcome/:first_name', to: 'static#welcome'
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
