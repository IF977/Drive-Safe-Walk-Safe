class ComentariosController < ApplicationController
    def create
        @acidente = Acidente.find(params[:acidente_id])
        @comentario = @acidente.comentarios.create(comentario_params)
        redirect_to acidente_path(@acidente)
    end    
    
    def destroy
        @acidente = Acidente.find(params[:acidente_id])
        @comentario = Comentario.find(params[:id])
        @comentario.destroy
        redirect_to acidente_path(@acidente)
    end
    
    def show
    end
    
    private
    def comentario_params
        params.require(:comentario).permit(:nome, :texto)
    end
end
