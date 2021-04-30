class UsersController < ApplicationController
    def create
        user_name = params[:user][:name]
        user_email = params[:user][:email]
        new_user = User.create(name: user_name, email: user_email)
        session[:user_id] = new_user.id
        redirect_to :root
    end
end