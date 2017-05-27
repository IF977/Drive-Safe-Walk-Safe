class CommentsController < ApplicationController
    def create
        @acidente = Acidente.find(params[:acidente_id])
        @comment = @acidente.comments.create(comment_params)
        redirect_to acidente_path(@acidente)
    end    
    
    def destroy
        @acidente = Acidente.find(params[:acidente_id])
        @comment = @acidente.comments.find(params[:id])
        @comment.destroy
        redirect_to acidente_path(@acidente)
    end
    
    def show
    end
    
    private
        def comment_params
            params.require(:comment).permit(:autor, :body)
        end
        
    
end
