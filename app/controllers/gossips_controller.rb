class GossipsController < ApplicationController
  def show
    id = params[:id]
    @gossipfind = Gossip.find(params[:id])
    @user = User.find(params[:id])
  end

  def index
    @gossips = Gossip.all
  end
end
