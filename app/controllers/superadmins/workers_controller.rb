module Superadmins
  class WorkersController < BaseController

    def index
      respond_to do |format|
        format.html
        format.json
      end
    end

    def new
      @worker = Worker.new
    end
    def create

      @worker = Worker.create!(params[:worker])

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end

     end





    end







end