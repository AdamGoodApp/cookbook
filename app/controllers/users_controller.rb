class UsersController < ApplicationController

	skip_before_filter :authenticate, only: [:new, :create]

	load_and_authorize_resource

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] ||= @user.id
  		redirect_to users_path
  	else
  		render 'new'
  	end
  end
end
