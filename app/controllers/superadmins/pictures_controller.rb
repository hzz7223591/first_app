class PicturesController < BaseController
  # GET /pictures
  # GET /pictures.json
     def vote1
     @picture=Picture.find(params[:id])
     @picture.unpass=+1
     if @picture.unpass>=9
       @picutre.status="未通过"
     else
     @picture.save
    end
     end

     def vote2
       @picture=Picture.find(params[:id])
       @picture.pass=+1
       if @picture.pass>=9
         @picutre.status="通过"
       else
         @picture.save
       end
     end

end


