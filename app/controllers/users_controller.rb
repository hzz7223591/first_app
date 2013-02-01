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
  def show
    @user=User.find(params[:id])
    @pictures=@user.pictures#.paginate(page: params[:page])
  end

   def index
     @users=User.all
   end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success]="User destroyed"
    redirect_to users_path
  end


end

