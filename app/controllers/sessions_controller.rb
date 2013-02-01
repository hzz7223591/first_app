class SessionsController < ApplicationController

  def new
  end

  def create
    user=User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
    sign_in (user)

      if current_user.is_a? Superadmin
        redirect_to '/superadmins'
       else if current_user.is_a? Admin
             redirect_to '/admins'
       else if current_user.is_a? Worker
          redirect_to '/workers'
         else
          redirect_to '/'
         end
       end

  end


    else
      flash.now[:error] = '*用户名或密码错误!'
      render 'new'
    end
  end



  def destroy
    sign_out
    redirect_to root_path
  end
  end
