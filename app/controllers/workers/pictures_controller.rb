module Workers

class PicturesController < BaseController
  # GET /pictures
  # GET /pictures.json


    def create
      @picture = Picture.create!(params[:picture])

      if @picture.save
        flash[:success] ="注册成功"
        redirect_to '/admins/inspect'

      else
        render 'new'
      end
    end


    def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy

      respond_to do |format|
        format.html { redirect_to '/admins/inspect' }
        format.json
      end
    end


    def new
      @picture = Picture.new(params[:picture])
    end




     def vote
     @picture=Picture.find(params[:id])

     @picture.unpass=@picture.unpass+1
     if (@picture.unpass>=2)
       @picture.groupunpass=@picture.groupunpass+1
       @picture.unpass=0
       @picture.pass=0

       @picture.save
     else
       @picture.save
       end
     #if @picture.unpass>=90
       #@picture.status="未通过"
     #else
     #@picture.save
     #end
     redirect_to '/superadmins/inspect'


     end

     def vote1
       @picture=Picture.find(params[:id])


       @picture.pass=@picture.pass+1
       if @picture.pass>=90
         @picture.status="通过"
       else
         @picture.save
       end
       redirect_to '/superadmins/inspect'
     end

end
end

