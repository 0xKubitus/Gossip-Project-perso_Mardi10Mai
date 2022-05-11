class GossipController < ApplicationController
  def index
    @gossips = Gossip.all # permet de pouvoir utiliser '@gossips' dans la view "gossip#index" et donc d'y lister tous les gossips.
  end

  def show
    @gossip = Gossip.find(params[:id]) # permet de choisir le gossip à afficher selon l'id du param et d'afficher la page de ce gossip en particulier
  end

  def new
    @gossip = Gossip.new
  end

  def create

  end




end # fin de la class GossipController
