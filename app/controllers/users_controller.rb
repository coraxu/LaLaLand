class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, notice: 'User was successfully created'
    else
      render action: "new"
    end
  end

end
