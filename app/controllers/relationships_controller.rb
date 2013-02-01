class RelationshipsController < ApplicationController
   def new
     @picture=Picture.new
   end
  def create
    @picture=Picture.find(params[:relationship][:picture_inspecter_id])
    current_user.inspect!(@picture)
    respond_to do |format|
      format.html
      format.js
    end
  end


end
