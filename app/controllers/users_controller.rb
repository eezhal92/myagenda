class UsersController < ApplicationController
  before_filter :authenticate_user!  
  load_and_authorize_resource
  skip_authorize_resource :only => :show  

  def index
    @users = User.all    
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_url, :alert => "Access denied."
    end
  end

end