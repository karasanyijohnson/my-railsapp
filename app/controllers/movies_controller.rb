class MoviesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
   def index   
      @movies = Movie.all   
   end  
   def show
    @movies = Movie.find(params[:id])
  end 
      
   def new   
      @movies = Movie.new   
   end

   def home
    end

   def pricing
        end

        def edit
            @movies = Movie.find(params[:id])
          end 

   def create   
      @movies = Movie.new(movie_params)   
         
      if @movies.save   
         redirect_to movies_path, notice: "Successfully uploaded."   
      else   
         render "new"   
      end   
         
   end  
   def update
    @movies = Movie.find(params[:id])
    redirect_to movies_path, notice: "Successfully updated ."  
    if @movies.update(movie_params)
      
    else
      render 'edit'
    end
  end
      
   def destroy   
      @movies = Movie.find(params[:id])   
      @movies.destroy   
      redirect_to movies_path, notice:  "Successfully deleted."   
   end   
      
   private   
      def movie_params   
      params.require(:movie).permit(:title, :category, :price, :year, :attachment)   
   end   
end