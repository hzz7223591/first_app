
module Admins
class InspectionController < BaseController
  def index
    @pictures=Picture.all
  end
end
end