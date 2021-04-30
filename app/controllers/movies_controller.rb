class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
    end

    def create
        movie_name = params[:movie][:name]
        movie_img_url = params[:movie][:image_url]
        is_private = params[:movie][:is_private]
        movie_review = params[:movie][:review]
        user_id = session[:user_id]
        new_movie_review = Movie.create(name: movie_name, image_url: movie_img_url, is_private: is_private, review: movie_review, user_id: user_id)
        redirect_to "/profile"
    end

    def show
        movie_id = params[:id]
        @comments = Comment.all
        @movie = Movie.find_by(id: movie_id)
    end
end