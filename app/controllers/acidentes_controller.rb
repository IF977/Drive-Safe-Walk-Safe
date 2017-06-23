class AcidentesController < ApplicationController
    helper_method :google_map, :google_map_source
    
    def index
        sql = "SELECT * FROM Acidentes "
        where = ""
        
        if params[:vitimas]
            where += 'vitimas '
            if params[:vitimas].to_sym == :com
                where += "> 0"
            elsif params[:vitimas].to_sym == :sem
                where += "= 0"
            else
                where += ">= 0"
            end
        end
        
        if params[:date_input] && !params[:date_input][:date_start].blank?
            # query_date_start = " data_hora >= Convert(datetime, '" + params[:date_input][:date_start].to_s + "' )"
            query_date_start = " data_hora >= '" + params[:date_input][:date_start].to_s + "'"
            if !where.blank?
                where += " AND"
            end
                
            where += query_date_start
        end
        
        if params[:date_input] && !params[:date_input][:date_end].blank?
            # query_date_end = " data_hora <= Convert(datetime, '" + params[:date_input][:date_end].to_s + "')"
            query_date_end = " data_hora <= '" + params[:date_input][:date_end].to_s + " 23:59:59.999'"
            if !where.blank?
                where += " AND"
            end
                
            where += query_date_end
        end
        
        if !where.blank?
            sql += " WHERE "
        end
        
        sql += where + " ORDER BY data_hora"
        
        @acidentes = Acidente.find_by_sql(sql)
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
      "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&key=AIzaSyBAlemrE2she5HXnZDG8hGb7XB2mmFrQ1I"
    end
    
    private
    def acidente_params
        params.require(:acidente).permit(:date_start, :date_end, :vitimas)
    end
    
end