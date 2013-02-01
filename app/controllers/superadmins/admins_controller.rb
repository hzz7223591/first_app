module Superadmins
  class AdminsController < BaseController

    def index
      respond_to do |format|
        format.html
        format.json
      end
    end

    def new
      @admin = Admin.new
    end
  end
  end