class StaticPagesController < ApplicationController
  
  def team
  end

  def contact
  end

  def welcome
    @user = User.find_by(first_name: params[:first_name])
  end

  def accueil
    @gossips = Gossip.all
  end

  def gossip
    @gossip = Gossip.find_by(id: params[:gossip_id])
    @author = User.find_by(id: @gossip.user_id)
    @first_name = @author.first_name  
    @user = @gossip.user
  end

  def profil
    @user = User.find_by(id: params[:user_id])  
  end 
  
end
