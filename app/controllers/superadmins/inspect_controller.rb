module Superadmins
class InspectController < BaseController
  def index
    @picture=Picture.all.sample
  #@pictures=Picture.all
  # @picture=@pictures-current_user.inspected_pictures
  # @picture=@picture.sample
    @pictures=Picture.all
  end
end
  end


