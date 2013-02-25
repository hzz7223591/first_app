

module Superadmins

class PicturesController < BaseController
  # GET /pictures
  # GET /pictures.json


    def create
      @picture= current_user.pictures.build(params[:picture])

      if @picture.save
        flash[:success] ="注册成功"
        redirect_to '/superadmins/inspect'
      else
        render 'new'
      end
    end


    def destroy
      @post = Picture.find(params[:id])
      @post.destroy

      respond_to do |format|
        format.html { redirect_to '/superadmins/inspect' }
        format.json
      end
    end


    def new
      @post = Post.new(params[:post])
    end




     def vote

       @post=Post.find(params[:id])
       current_user.inspect!(@post)
     @post.unpass=@post.unpass+1
     if (@post.unpass>=2)
       @post.groupunpass=@post.groupunpass+1
       @post.unpass=0
       @post.pass=0


       if (@post.groupunpass>=2)
         @post.status="未通过"
       end
       @post.save
     else
       @post.save
       end
     #if @picture.unpass>=90
       #@picture.status="未通过"
     #else
     #@picture.save
     #end
     redirect_to '/superadmins/inspect'


     end

     def vote1
       @post=Post.find(params[:id])
       current_user.inspect!(@post)
       @post.pass=@post.pass+1
       if (@post.pass>=2)
         @post.grouppass=@post.grouppass+1
         @post.unpass=0
         @post.pass=0


         if (@post.grouppass>=2)
           @post.status="通过"
         end
         @post.save
       else
         @post.save
       end
       redirect_to '/superadmins/inspect'
     end

end
end

