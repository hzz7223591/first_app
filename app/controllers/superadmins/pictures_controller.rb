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

          @picture.status="未通过"

        @picture.save

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

          @picture.status="通过"

        @picture.save

      redirect_to '/superadmins/inspect'
    end

  end
end

