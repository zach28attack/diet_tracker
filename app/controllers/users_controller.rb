class UsersController < ApplicationController
    def new
        @user = User.new
        
    end
    def index
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "You have successfully created an account"
        else
            redirect_to new_user_path
            flash[:alert] = "Something went wrong,"
        end
        
    end

    private
    def user_params
        params.fetch(:food, {}).permit(:name, :calories)
    end
end