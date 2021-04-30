class HomeController < ApplicationController
    def index
    end

    def welcome_msg 
        render "welcome_msg", layout: false
    end

    def login_form
        render "login_form", layout: false
    end

    def signup_form
        render "signup_form", layout: false
    end
end
