module Superadmins
class InspectController < BaseController
  def index
    @picture=Picture.all.sample
  #@pictures=Picture.all
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


