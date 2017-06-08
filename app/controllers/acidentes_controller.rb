class AcidentesController < ApplicationController
    def index
        @acidentes = Acidente.all
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
    
    private
    def acidente_params
        params.require(:acidente).permit(:descricao, :vitimas)
    end
end