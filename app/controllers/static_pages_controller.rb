class StaticPagesController < ApplicationController
  def welcome
    @user = User.find_by(first_name: params[:first_name])
  end

  def team
  end

  def contact
  end

  def each_gossip
      @gossips = Gossip.find_by(id: params[:gossip_id])
      @author = User.find_by(id: @gossip.user_id)
      @first_name = @author.first_name
  end

  def authordetails
  end

  def accueil
    @gossips = Gossip.all
  end

end
