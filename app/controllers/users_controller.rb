class UsersController < ApplicationController
  has_many :games
  has_many :characters, through: :games
  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end


end
