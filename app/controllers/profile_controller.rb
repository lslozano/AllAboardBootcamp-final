class ProfileController < ApplicationController
    before_action :load_movies, only: [:profile]

    def index
        user_email = params[:email]
        @user = User.find_by(email: user_email)

        if @user != nil
            redirect_to "/profile"
        else 
            redirect_to :root
        end
    end

    def profile
    end

    private

    def load_movies
        @movies = Movie.all
    end
end

