
module Workers
class InspectionController < BaseController
  def index
    @pictures=Picture.all
  end
end
end