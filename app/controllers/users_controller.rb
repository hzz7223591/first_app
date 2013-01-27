class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    @user=User.new(params[:user])

    if @user.save
      flash[:success] ="注册成功"
      @user.type=workers
      redirect_to '/superadmins/inspect'

    else
      render 'new'
    end
  end
end

