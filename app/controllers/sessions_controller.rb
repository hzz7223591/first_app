class SessionsController < ApplicationController

  def new
  end

  def create
    user=User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
    sign_in (user)

      if current_user.is_a? Superadmins
        redirect_to '/superadmins'
      if current_user.is_a? Admins
             redirect_to '/admins'
       if current_user.is_a? workers
          redirect_to '/workers'
         if  current_user.is_a? tourists
          redirect_to '/tourists'
         end
         end
       end
    else
      flash.now[:error] = '*用户名或密码错误!'
      render 'new'
    end
  end



end

  def destroy
    sign_out
    redirect_to root_path

  end
end