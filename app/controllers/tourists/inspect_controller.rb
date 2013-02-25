module Tourists
  class InspectController < BaseController
    def index

      @picture=(Picture.where("status='待审'").all).sample
      @pictures=Picture.all
 end
  end
  end