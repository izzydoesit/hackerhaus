class UsersController < ApplicationController
  def new
    @user = User.new(:role => 'agent')
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: 'Sign up complete. Please check your inbox for activation email.'
    else
      render action: "new"
    end
  end
end
