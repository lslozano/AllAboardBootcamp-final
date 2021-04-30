class CommentsController < ApplicationController
    def create
        comment_body = params[:body]
        user_id = params[:user_id]
        movie_id = params[:movie_id]
        new_comment = Comment.create(body: comment_body, user_id: user_id, movie_id: movie_id)
        redirect_to "/movies/#{movie_id}"
    end
end
