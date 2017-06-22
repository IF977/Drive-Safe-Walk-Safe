class AcidentesController < ApplicationController
    helper_method :google_map, :google_map_source
    
    def index
        # @acidentes = Acidente.all
        
        if params[:select_vitimas]
            if params[:select_vitimas] == :com
                @acidentes = Acidente.where(:vitimas > 0)
            elsif params[:select_vitimas] == :sem
                @acidentes = Acidente.where(:vitimas == 0)
            else
                @acidentes = Acidente.all
            end
        else 
            @acidentes = Acidente.all
        end
    end
    
    def show
        @acidente = Acidente.find(params[:id])
    end
    
    def new
    end
    
    def create
        @acidente = Acidente.new(acidente_params)
 
        @acidente.save
        redirect_to @acidente
    end
    
    def google_map(center)
      "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
    end
    
    def google_map_source(center)
        "https://www.google.com/maps/embed/v1/place?key=AIzaSyBAlemrE2she5HXnZDG8hGb7XB2mmFrQ1I&q=#{center}"
    end
    
    private
    def acidente_params
        params.require(:acidente).permit(:data_start, :date_end, :vitimas)
    end
    
end