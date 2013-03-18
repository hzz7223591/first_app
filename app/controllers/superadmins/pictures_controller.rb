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
      @picture = Picture.new(params[:post])
    end


    def vote

      @picture=Picture.find(params[:id])
      current_user.inspect!(@picture)
      @picture.unpass=@picture.unpass+1
      if (@picture.unpass>=2)
        @picture.groupunpass=@picture .groupunpass+1
        @picture.unpass=0
        @picture.pass=0


        if (@picture.groupunpass>=2)
          @picture.status="未通过"
        end
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
      current_user.inspect!(@picture)
      @picture.pass=@picture.pass+1
      if (@picture.pass>=2)
        @picture.grouppass=@picture.grouppass+1
        @picture.unpass=0
        @picture.pass=0


        if (@picture.grouppass>=2)
          @picture.status="通过"
        end
        @picture.save
      else
        @picture.save
      end
      redirect_to '/superadmins/inspect'
    end

  end
end

