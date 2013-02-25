module Superadmins
class MyinspectController < BaseController
  def index
 @pictures=current_user.pictures
  end
end
 end