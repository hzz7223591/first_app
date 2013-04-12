module Workers

  class InspectController < BaseController
    def index

      unless (Picture.where("status='待审'").all-current_user.pictures).empty?
        @picture=(Picture.where("status='待审'").all-current_user.pictures).sample
      else
        @picture=Picture.all.sample
      end
      # @pictures=Picture.all
      # @picture=@pictures-current_user.inspected_pictures
      # @picture=@picture.sample
      @pictures=Picture.all
    end

    def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy

      respond_to do |format|
        format.html { redirect_to '/superadmins/inspect' }
        format.json
      end
    end




  end




end