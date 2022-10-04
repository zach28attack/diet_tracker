class UsersController < ApplicationController
    def new
        @user = User.new(user_params)
        debugger
        
    end
    def index
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "You have successfully created an account"
            redirect_to foods_path
        else

            render :new
            
        end
        
    end

    private
    def user_params
        params.fetch(:user, {}).permit(:username, :password_digest)
    end
end